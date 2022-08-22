sessions <- yaml::read_yaml("data/00-projects-with-data.yml")

all_sessions <- tibble(project = sessions) %>% 
  unnest_wider(project) %>% 
  mutate(
    open_data = map_chr(sessions, "open_data")
  ) %>% 
  unnest_longer(judging_sessions) %>%
  unnest_wider(judging_sessions) %>%
  # replace columns containing length-1 lists with just the contents
  mutate(across(c("study", "N_A", "N_R", "N_J", "adaptivity"), as.character)) %>% 
  # tidy up the missing entries - replace NULL with NA
  mutate(across(c("study", "N_A", "N_R", "N_J", "adaptivity"), ~ na_if(.x, "NULL")))

files <- fs::dir_ls(path = "data", glob = "*.csv")

judgement_data_raw <- tibble(path = files) %>% 
  filter(!str_starts(path, "data/\\d+-")) %>% 
  # add columns describing the course and cohort from parsing the filename
  mutate(
    judging_session = str_remove_all(path, "data/|.csv"),
  ) %>% 
  mutate(
    csv_contents = map(path, read_csv, na = c("-"), show_col_types = FALSE)
  )

judgement_data_tidy <- judgement_data_raw %>% 
  # Tidy up the contents of each judgement data CSV to just the judge/won/lost columns
  mutate(
    csv_contents = map(csv_contents, function(df) {
      if (all(has_name(df, c("judge", "candidate_chosen", "candidate_not_chosen")))) {
        df_out <- df %>% select(
          judge = judge,
          won = candidate_chosen,
          lost = candidate_not_chosen
        ) %>% return()
      } else if (all(has_name(df, c("judge", "won", "lost")))) {
        df_out <- df %>% select(judge, won, lost)
      } else {
        warning("Could not find suitable CJ decision columns", names(df))
        df_out <- tibble(judge = 1, won = 1, lost = 1)
      }
      # change all columns to characters, so they can be combined later
      return(df_out %>% mutate_all(as.character))
    })
  ) %>% 
  # check the number of representations and assessors
  mutate(
    observed_N_A = map_int(csv_contents, function(df) {
      df %>% select(judge) %>% distinct() %>% nrow() %>% return()
    }),
    observed_N_R = map_int(csv_contents, function(df) {
      bind_rows(
        df %>% select(script = won),
        df %>% select(script = lost),
      ) %>% distinct() %>% nrow() %>% return()
    }),
    observed_N_C = map_int(csv_contents, nrow)
  ) %>% 
  # cross-check with the metadata
  full_join(
    all_sessions %>% 
      mutate(judging_session = if_else(is.na(study), project_id, paste0(project_id, "_", study)), .before = 1),
    by = "judging_session"
  )


judgement_data <- judgement_data_tidy %>% 
  # unpack all the results and tidy up
  unnest(cols = c(csv_contents)) %>% 
  select(judging_session, judge, won, lost)