library(tidyverse)
library(readxl)
library(janitor)

# This script takes the contents of the final-screening.xlsx file, does some minor tweaking, and writes them to a .csv
# Some further manual edits are made on the csv (to tweak the paper_key field)

all_papers_raw <- read_excel("lit-search/2021-06-07-final-screening.xlsx", sheet = "Coding")

all_papers <- all_papers_raw %>% 
  mutate(
    request_data = !is.na(who_contact),
    first_author = gsub("^(.*?),.*", "\\1", author),
    project_id = case_when(
      !is.na(first_author) ~ paste0(first_author, year),
      !is.na(author) ~ paste0(author, year),
      TRUE ~ bibtexkey
    ),
    project_id = str_replace_all(project_id, "[ -]", ""),
    source = ifelse(assigned_to == "NEW", "Snowballing", "Lens search"),
    data_retrieved = str_detect(result, "Yes")
  ) %>% 
  # distinguish multiple Author2000 entries as Author2000a Author2000b etc
  group_by(project_id) %>% 
  mutate(item_label = letters[row_number()], num_with_key = n()) %>% 
  ungroup() %>% 
  mutate(project_id = ifelse(num_with_key == 1, project_id, paste0(project_id, item_label))) %>% 
  select(-first_author, -item_label, -num_with_key)

all_papers %>% tabyl(uses_cj, source)

# NB - Bürkner 2021 is "uses_cj = No" but had request_data = TRUE.
# This was a mis-categorisation when screening, so we corrected it,
# see https://github.com/georgekinnear/cj-meta-analysis/issues/3
all_papers %>% tabyl(uses_cj, request_data)
all_papers %>% 
  filter(uses_cj == "No", request_data)

# Honeychurch2019 is NA for data_retrieved, but is in the request_data group
all_papers %>% tabyl(request_data, data_retrieved)
all_papers %>% filter(request_data, is.na(data_retrieved))

all_papers %>% tabyl(open_data)

all_papers %>% tabyl(request_data, data_retrieved, source)

all_papers %>% tabyl(data_retrieved, show_na = FALSE)

all_papers %>% 
  write_csv("lit-search/2022-06-07-all-papers.csv")

judging_session_info <- tibble(
  study = "[TODO] name for the study (only needed if there are many)",
  N_A = "[TODO]",
  N_R = "[TODO]",
  N_J = "[TODO]",
  items = "[TODO] short description of what is being judged",
  judge_expertise = "[TODO] expert/peer/novice",
  judging_prompt = "[TODO]"
)
judging_session_info %>% yaml::as.yaml() %>% cat()
# this chunk can be manually copy/pasted into the file that's created below

all_papers %>%
  filter(data_retrieved) %>% 
  arrange(who_contact) %>% 
  mutate(open_data = case_when(
    open_data == "Y" ~ open_data_notes,
    open_data == "N" ~ "N",
    TRUE ~ "TODO... CHECK FOR OPEN DATA"
  )) %>% 
  select(project_id,
         citation = APA_citation,
         doi,
         open_data
  ) %>% 
  # the -DONOTOVERWRITE has been added to avoid writing over the subsequent manually-entered data
  yaml::write_yaml(file = "data/00-projects-with-data-DONOTOVERWRITE.yml", column.major = FALSE)


all_papers %>%
  filter(!data_retrieved) %>% 
  arrange(who_contact) %>% 
  mutate(open_data = case_when(
    open_data == "Y" ~ open_data_notes,
    open_data == "N" ~ "N",
    TRUE ~ "TODO... CHECK FOR OPEN DATA"
  )) %>% 
  select(project_id,
         citation = APA_citation,
         doi,
         open_data
  ) %>% 
  # the -DONOTOVERWRITE has been added to avoid writing over the subsequent manually-entered data
  yaml::write_yaml(file = "data/00-projects-without-data-DONOTOVERWRITE.yml", column.major = FALSE)
