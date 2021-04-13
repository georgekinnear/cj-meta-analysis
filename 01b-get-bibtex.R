# look at the output from 01-data-summary.Rmd
pubs_all <- read_csv("data/00-judging_sessions_summary.csv")

# check existing .bib file
existing_bib <- RefManageR::ReadBib("refs.bib")

# identify publications where there is no refs.bib entry so far
pubs <- pubs_all %>% anti_join(
  existing_bib %>% as.data.frame() %>% rownames_to_column(var = "key") %>% select(project_id = key) %>% filter(str_detect(project_id, "Jones"))
)
pubs

# gather the bibtex for each entry using its DOI
dois <- pubs %>% 
  select(doi) %>% 
  distinct() %>% 
  drop_na() %>% 
  deframe()
dois
bib <- RefManageR::GetBibEntryWithDOI(dois)
bib
toBibtex(bib) %>% write(file = "refs_tmp.bib")

# the following bit doesn't work for some reason - not sure why changing bib[i] does not work inside the loop, but does outside of it!

# update the bibtex keys to match the project_id field
doi_to_key <- pubs %>% select(doi, project_id) %>% distinct() %>% mutate(doi = str_to_lower(doi)) %>% deframe()
for (i in 1:length(bib)) {
  print(bib[i])
  new_key <- doi_to_key[bib[i]$doi] %>% as.character()
  print(new_key)
  bib[i] <- c("key" = new_key)
  #bib[i] <- existing_bib[i]
}
bib[1] <- c("key" = new_key)
# write to refs.bib
toBibtex(bib) %>% write(file = "refs_tmp.bib")
