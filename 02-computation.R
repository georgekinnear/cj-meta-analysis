library(tidyverse)
library(EloChoice) # used in compute_elo()

# get the judgement_data_tidy table set up
source("00-load-all-judgement-data.R")


#### SSR ####

# 1. helper function ----

compute_btm <- function(csv_contents, judging_session, seed = 123, ...) {
  print(judging_session)
  # make sure the cache folder exists for this judging session
  dir.create(file.path("data-cache", judging_session), showWarnings = FALSE)
  cache_file <- paste0("data-cache/", judging_session, "/btm_results.csv")
  
  if(file.exists(cache_file)) {
    ssr_cached = read_csv(cache_file %>% str_replace("_results", "_ssr"), show_col_types = FALSE)
    sepG_cached = read_csv(cache_file %>% str_replace("_results", "_sepG"), show_col_types = FALSE)
    btm_cached = read_csv(cache_file, show_col_types = FALSE)
    print(str_glue("  ✔ retrieved from cache"))
    
    return(list(
      ssr = list(ssr_cached$ssr),
      sepG = list(sepG_cached$sepG),
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
    write_csv(tibble(sepG = sirt_result$sepG), file = cache_file %>% str_replace("_results", "_sepG"))
    
    return(list(
      ssr = list(sirt_result$mle.rel),
      sepG = list(sirt_result$sepG),
      btm_estimates = list(sirt_result$effects)
    ))
  
  }
  
}

# 2. iterate over the judging sessions ----

btm_data <- judgement_data_tidy %>% 
  filter(!is.na(observed_N_A)) %>% 
  # could optionally specify a seed, but the default of 123 provided by compute_btm is fine
  # mutate(seed = digest::digest2int(judging_session) %>% abs) %>% 
  mutate(btm_results = pmap_dfr(., compute_btm)) %>% 
  unnest(cols = btm_results)

# to run just for specific judging sessions:
# judgement_data_tidy %>%
#   filter(str_detect(judging_session, "Luck")) %>%
#   pmap_dfr(compute_btm)

# 3. Read in all the saved SSR values ----

btm_ssr_values <- tibble(path = fs::dir_ls("data-cache", recurse = TRUE, glob = "*btm_ssr*")) %>% 
  separate(path, into = c(NA, "judging_session", NA), sep = "/", remove = FALSE) %>% 
  mutate(ssr = map(path, vroom::vroom, delim = ",", show_col_types = FALSE)) %>% 
  unnest(ssr) %>% 
  select(-path)

sepG_values <- tibble(path = fs::dir_ls("data-cache", recurse = TRUE, glob = "*btm_sepG*")) %>% 
  separate(path, into = c(NA, "judging_session", NA), sep = "/", remove = FALSE) %>% 
  mutate(sepG = map(path, vroom::vroom, delim = ",", show_col_types = FALSE)) %>% 
  unnest(sepG) %>% 
  select(-path)

ssr_values <- btm_ssr_values %>% 
  left_join(sepG_values, by = "judging_session")

#### Split-halves ####

#1. helper function ----

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

#2. generate the split halves ----

pmap_dfr(judgement_data_tidy %>% filter(!is.na(observed_N_A)), generate_split_halves)

#3. read the cached results ----

compute_split_half_cors_from_cache <- function(judging_session, ...) {
  fs::dir_ls(str_glue("data-cache/{judging_session}/split-halves/")) %>% 
    vroom::vroom(id = "path", show_col_types = FALSE) %>% 
    nest(data = !path) %>% 
    mutate(split_corr = map_dbl(data, ~ cor(.x$theta.x, .x$theta.y, method = "pearson"))) %>% 
    # compute the sepG and SSR values for one of the split halves, to produce ssr_x
    mutate(G_x = map_dbl(data, ~ sd(.x$theta.x) / sqrt(mean(.x$se.theta.x ^ 2)) ),
           ssr_x = G_x ^ 2 / (1 + G_x ^ 2)
    ) %>% 
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

# keep a cached copy of the split_corr and ssr_x for each split half
split_halves_data %>% select(-G_x) %>% write_csv("data-cache/split_halves_summary_stats.csv")

# summarise the splot_corr and ssr_x using medians
split_halves_values <- split_halves_data %>% 
  group_by(judging_session) %>%
  summarise(median_split_corr = median(split_corr),
            median_ssr_x = median(ssr_x))


#### EloChoice ####

#1. helper function ----
compute_elo <- function(csv_contents, judging_session, seed = 123, ...) {
  print(judging_session)
  # make sure the cache folder exists for this judging session
  dir.create(file.path("data-cache", judging_session), showWarnings = FALSE)
  cache_file <- paste0("data-cache/", judging_session, "/elo_results.csv")
  
  if(file.exists(cache_file)) {
    elo_cached = read_csv(cache_file, show_col_types = FALSE)
    elo_reliabilities_cached = read_csv(cache_file %>% str_replace("results", "reliabilities"), show_col_types = FALSE)
    print(str_glue("  ✔ retrieved from cache"))
    
    return(list(
      elo_reliability = list(elo_reliabilities_cached),
      elo_estimates = list(elo_cached)
    ))
  } else {
    # use the assigned seed for this judging session to make sure the computation is repeatable
    set.seed(seed)
    
    # call EloChoice::elochoice
    res <- elochoice(winner = csv_contents$won, loser = csv_contents$lost, runs = 1000)
    
    # save the estimated item scores
    item_scores <- ratings(res, show = "mean", drawplot = FALSE) %>% enframe()
    item_scores %>% write_csv(file = cache_file)
    
    # compute reliability measures and save them
    elo_rel <- reliability(res) %>% 
      summarise(
        mean_eloR = mean(upset),
        mean_eloR_weighted = mean(upset.wgt)
      )
    elo_rel %>% write_csv(file = cache_file %>% str_replace("results", "reliabilities"))
    
    return(list(
      elo_reliability = list(elo_rel),
      elo_estimates = list(item_scores)
    ))
    
  }
  
}

#2. iterate over all judging sessions ----

elo_data <- judgement_data_tidy %>% 
  filter(!is.na(observed_N_A)) %>% 
  filter(!str_detect(judging_session, "Jones2020")) %>% 
  mutate(elo = pmap_dfr(., compute_elo)) %>% 
  unnest(cols = elo)
  
elo_values <- elo_data %>% 
  unnest(cols = elo_reliability) %>%  
  select(judging_session, starts_with("mean_eloR"))

#3. compare scores with BTM
elo_scores <- elo_data %>%
  select(judging_session, elo_estimates) %>% 
  mutate(elo_estimates = purrr::map(elo_estimates, ~ .x %>% mutate(name = as.character(name)))) %>% 
  unnest(cols = elo_estimates) %>% 
  rename(elo_score = value)

btm_scores <- btm_data %>%
  select(judging_session, btm_estimates) %>%
  mutate(btm_estimates = purrr::map(
    btm_estimates,
    ~ .x %>%
      transmute(name = as.character(individual),
                btm_score = theta)
  )) %>% 
  unnest(cols = btm_estimates)

elo_vs_btm <- elo_scores %>%
  left_join(
    btm_scores,
    by = c("judging_session", "name")
  ) %>% 
  group_by(judging_session) %>% 
  summarise(
    elo_btm_correlation = cor(elo_score, btm_score)
  )

#### Pairs judged ####


#1. helper function ----
compute_pairs_judged <- function(csv_contents, judging_session, ...) {
  print(judging_session)
  # make sure the cache folder exists for this judging session
  dir.create(file.path("data-cache", judging_session), showWarnings = FALSE)
  cache_file <- paste0("data-cache/", judging_session, "/pairs_results.csv")
  
  if(file.exists(cache_file)) {
    pairs_cached = read_csv(cache_file, show_col_types = FALSE)
    print(str_glue("  ✔ retrieved from cache"))
    
    return(list(pairs_cached))
  } else {
    items <- csv_contents %>%
      pivot_longer(
        cols = c("won", "lost"),
        names_to = "outcome",
        values_to = "script"
      ) %>%
      select(script) %>%
      distinct()
    all_pairs <- items %>% 
      expand(script, script) %>%
      rename(item1 = 1, item2 = 2) %>%
      filter(item1 < item2)
    observed_pairs <- csv_contents %>% 
      mutate(decision_num = row_number()) %>%
      pivot_longer(
        cols = c("won", "lost"),
        names_to = "outcome",
        values_to = "script"
      ) %>%
      arrange(decision_num, script) %>%
      group_by(decision_num) %>%
      mutate(item = ifelse(row_number() == 1, "item1", "item2")) %>%
      ungroup() %>%
      select(-outcome) %>%
      pivot_wider(names_from = "item", values_from = "script") %>%
      filter(item1 != item2) %>% 
      group_by(item1, item2) %>%
      tally()
    
    pairs_data <- tibble(
      num_pairs = nrow(all_pairs),
      num_pairs_judged = nrow(observed_pairs),
      prop_pairs_judged = num_pairs_judged / num_pairs
    )
    
    pairs_data %>% write_csv(file = cache_file)
    
    return(list(pairs_data))
    
  }
  
}

#2. iterate over all judging sessions ----

pairs_values <- judgement_data_tidy %>% 
  filter(!is.na(observed_N_A)) %>% 
  mutate(pairs = pmap_dfr(., compute_pairs_judged)) %>% 
  unnest(cols = pairs) %>%
  select(judging_session, contains("_pairs"))

#3. consider whether pairs were judged "correctly" ----

prop_correct <- judgement_data_tidy %>% 
  filter(!is.na(observed_N_A)) %>% 
  unnest(cols = csv_contents) %>% 
  select(judging_session, judge, won, lost) %>% 
  left_join(
    btm_scores %>% rename(won = name, score_won = btm_score),
    by = c("judging_session", "won")
  ) %>% 
  left_join(
    btm_scores %>% rename(lost = name, score_lost = btm_score),
    by = c("judging_session", "lost")
  ) %>% 
  mutate(normatively_correct = score_won > score_lost) %>% 
  group_by(judging_session) %>% 
  summarise(
    prop_correct_judgements = sum(normatively_correct) / n()
  )

  
#### 🏗️ Assemble all the data ####

ssr_values %>% 
  left_join(split_halves_values, by = "judging_session") %>% 
  left_join(elo_values, by = "judging_session") %>% 
  left_join(elo_vs_btm, by = "judging_session") %>% 
  left_join(pairs_values, by = "judging_session") %>% 
  left_join(prop_correct, by = "judging_session") %>% 
  write_csv("data/01-meta-analysis-data.csv")
