library(tidyverse)

# get the judgement_data_tidy table set up
source("00-load-all-judgement-data.R")

compute_btm <- function(csv_contents, judging_session, seed = 123, ...) {
  print(judging_session)
  # make sure the cache folder exists for this judging session
  dir.create(file.path("data-cache", judging_session), showWarnings = FALSE)
  cache_file <- paste0("data-cache/", judging_session, "/btm_results.csv")
  
  if(file.exists(cache_file)) {
    ssr_cached = read_csv(cache_file %>% str_replace("_results", "_ssr"), show_col_types = FALSE)
    btm_cached = read_csv(cache_file, show_col_types = FALSE)
    print(str_glue("  ✔ retrieved from cache"))
    
    return(list(
      ssr = list(ssr_cached$ssr),
      btm_estimates = list(btm_cached)
    ))
  } else {
  
    # format the judgements in the way that sirt::btm expects
    judgements_for_sirt <- csv_contents %>%
      select(won, lost) %>% 
      mutate(winner = 1) %>% # sirt's way to indicate the leftmost column is the winner
      data.frame

    # use the assigned seed for this judging session to make sure the computation is repeatable
    set.seed(seed)
    
    # call sirt::btm
    sirt_result <- sirt::btm(
        data = judgements_for_sirt,
        judge = csv_contents %>% pull(judge),
        maxit = 400 , fix.eta = 0 , ignore.ties = TRUE
      )
    
    write_csv(sirt_result$effects, file = cache_file)
    write_csv(tibble(ssr = sirt_result$mle.rel), file = cache_file %>% str_replace("_results", "_ssr"))
    
    return(list(
      ssr = list(sirt_result$mle.rel),
      btm_estimates = list(sirt_result$effects)
    ))
  
  }
  
}

generate_split_halves <- function(csv_contents, judging_session, seed = 123, splits = 100, ...) {
  print(str_glue("{judging_session} split halves..."))
  
  # make sure the cache folder exists for this judging session
  dir.create(file.path("data-cache", judging_session), showWarnings = FALSE)
  splits_folder <- str_glue("data-cache/{judging_session}/split-halves/")
  dir.create(file.path(splits_folder), showWarnings = FALSE)
  
  # read the number of cached results
  existing_files <- fs::dir_ls(path = splits_folder,
                               glob = "*.csv")
  existing_splits <- parse_number(existing_files %>% str_remove(splits_folder))
  splits_still_to_do <- setdiff(c(1:splits), existing_splits)
  if(length(splits_still_to_do) == 0) {
    print(str_glue("  ✔ all done"))
  } else {
    print(str_glue("  Splits still to do: {length(splits_still_to_do)}"))
  }
  
  # format the judgements in the way that sirt::btm expects
  judgements_for_sirt <- csv_contents %>%
    select(judge, won, lost) %>% 
    mutate(winner = 1) %>% # sirt's way to indicate the leftmost column is the winner
    data.frame
  
  # make as many more splits as necessary to get up to the desired `splits` number
  for (i in splits_still_to_do) {
    print(str_glue("  Split {i}"))
    # Set the seed for this split
    set.seed(seed + i)
    
    # Group 1: sample half of the judges at random
    judge_group1 <- judgements_for_sirt %>%
      select(judge) %>%
      distinct() %>%
      slice_sample(prop = 0.5)
    # Group 2: the remaining judges
    judge_group2 <- judgements_for_sirt %>%
      select(judge) %>%
      distinct() %>%
      anti_join(judge_group1, by = c("judge"))
    
    # Run BTM
    judgements1 <- judgements_for_sirt %>% semi_join(judge_group1, by = c("judge")) %>% select(-judge)
    judgements2 <- judgements_for_sirt %>% semi_join(judge_group2, by = c("judge")) %>% select(-judge)
    
    btm1 <- purrr::quietly(sirt::btm)(judgements1 %>% data.frame , maxit=400 , fix.eta=0 , ignore.ties=TRUE )$result
    btm2 <- purrr::quietly(sirt::btm)(judgements2 %>% data.frame , maxit=400 , fix.eta=0 , ignore.ties=TRUE )$result

    merged_effects <- merge(btm1$effects, btm2$effects, by="individual")
    
    # Save results
    write_csv(merged_effects, file = str_glue("data-cache/{judging_session}/split-halves/split{i}.csv"))
  }
}

pmap_dfr(judgement_data_tidy %>% filter(!is.na(observed_N_A)), generate_split_halves)

#dat_out <- pmap_dfr(head(judgement_data_tidy), compute_btm)

judgement_data_tidy %>% 
  filter(!is.na(observed_N_A)) %>% 
  # could optionally specify a seed, but the default of 123 provided by compute_btm is fine
  # mutate(seed = digest::digest2int(judging_session) %>% abs) %>% 
  mutate(btm_results = pmap_dfr(., compute_btm)) %>% 
  unnest(cols = btm_results)

# judgement_data_tidy %>%
#   filter(str_detect(judging_session, "Luck")) %>%
#   pmap_dfr(compute_btm)

# Read in all the saved SSR values
ssr_values <- tibble(path = fs::dir_ls("data-cache", recurse = TRUE, glob = "*btm_ssr*")) %>% 
  separate(path, into = c(NA, "judging_session", NA), sep = "/", remove = FALSE) %>% 
  mutate(ssr = map(path, vroom::vroom, delim = ",", show_col_types = FALSE)) %>% 
  unnest(ssr) %>% 
  select(-path)

compute_split_half_cors_from_cache <- function(judging_session, ...) {
  fs::dir_ls(str_glue("data-cache/{judging_session}/split-halves/")) %>% 
    vroom::vroom(id = "path", show_col_types = FALSE) %>% 
    nest(data = !path) %>% 
    mutate(split_corr = map_dbl(data, ~ cor(.x$theta.x, .x$theta.y, method = "pearson"))) %>% 
    select(-data) %>% 
    write_csv(str_glue("data-cache/{judging_session}/split_halves.csv"))
}

# if you just want to do one ad-hoc:
#compute_split_half_cors_from_cache(judging_session = "Hunter2018")

# Loop through all the judging sessions and generate the split_halves.csv if it doesn't exist yet
judgement_data_tidy %>% 
  pwalk(function(...) {
    args <- list(...) # get the list of named arguments
    print(str_glue("{args$judging_session}"))
    if(is.na(args$observed_N_A)) {
      print(str_glue("  no judgement data yet"))
    } else {
      if(file.exists(str_glue("data-cache/{args$judging_session}/split_halves.csv"))) {
        print(str_glue("  ✔ already done"))
      } else {
        compute_split_half_cors_from_cache(judging_session = args$judging_session)
        print(str_glue("  ✔✔ done"))
      }
    }
  })

split_halves_data <- tibble(path = fs::dir_ls("data-cache", recurse = TRUE, glob = "*split_halves.csv")) %>% 
  separate(path, into = c(NA, "judging_session", NA), sep = "/", remove = FALSE) %>% 
  mutate(split_corr = map(path, vroom::vroom, delim = ",", show_col_types = FALSE)) %>% 
  select(-path) %>% 
  unnest(cols = split_corr) %>% 
  separate(path, into = c(NA, "iteration"), sep = "split-halves/split") %>% 
  mutate(iteration = str_remove(iteration, ".csv"))

split_halves_values <- split_halves_data %>% 
  group_by(judging_session) %>%
  summarise(mean_split_corr = mean(split_corr))

ssr_values %>% 
  left_join(split_halves_values, by = "judging_session") %>% 
  write_csv("data/01-reliability-values.csv")
