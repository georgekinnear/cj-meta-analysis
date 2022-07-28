library(tidyverse)
library(vroom)
library(janitor)

# Jones, I., Swan, M., & Pollitt, A. (2015). Assessing mathematical problem solving using comparative judgement. International Journal of Science and Mathematics Education, 13(1), 151-177.
jones2015 <- vroom("data-raw/jones/IJSME2014.csv", .name_repair = janitor::make_clean_names)

purrr::iwalk(
  split(jones2015, jones2015$session),
  ~ vroom_write(.x, glue::glue("data/Jones2014_{.y}.csv"), ",")
)
jones2015 %>% group_by(session, judge) %>% tally() %>% count()



# Jones, I., & Alcock, L. (2014). Peer assessment without assessment criteria. Studies in Higher Education, 39(10), 1774-1787.
jones2014 <- vroom("data-raw/jones/SHE2014decisions.csv", .name_repair = janitor::make_clean_names)

purrr::iwalk(
  split(jones2014, jones2014$group),
  ~ vroom_write(.x, glue::glue("data/Jones2013a_{.y}.csv"), ",")
)
jones2014 %>% group_by(group, judge) %>% tally() %>% count()

#McMahon, S., & Jones, I. (2015). A comparative judgement approach to teacher assessment. Assessment in Education: Principles, Policy & Practice, 22(3), 368-389.
mcmahon2015 <- vroom("data-raw/jones/AIE_PEERDECISIONS.csv", .name_repair = janitor::make_clean_names)
mcmahon2015 %>% write_csv("data/McMahon2014_peer.csv")

# Jones, I., & Wheadon, C. (2015). Peer assessment using comparative and absolute judgement. Studies in Educational Evaluation, 47, 93–101. https://doi.org/10.1016/j.stueduc.2015.09.004
jones2015b<- vroom("data-raw/jones/SEE2015alljudgements.csv", .name_repair = janitor::make_clean_names)
jones2015b %>% write_csv("data/Jones2015b.csv")

# Bisson, M.-J., Gilmore, C., Inglis, M., & Jones, I. (2019). Teaching using contextualised and decontextualised representations: examining the case of differential calculus through a comparative judgement technique. Research in Mathematics Education, 1–20.
vroom("data-raw/jones/RME2019decisions.csv", .name_repair = janitor::make_clean_names) %>% write_csv("data/Bisson2019.csv")

# Jones, I., Inglis, M., Gilmore, C., & Hodgen, J. (2013). Measuring conceptual understanding:
# The case of fractions. Proceedings of the 37th Conference of the International Group for the
# Psychology of Mathematics Education, 3, 113–120.
vroom("data-raw/jones/PMEfractionsdecisions.csv", .name_repair = janitor::make_clean_names) %>%
  select(judge, contains("candidate")) %>% write_csv("data/Jones2013b.csv")

# Bisson, M.-J., Gilmore, C., Inglis, M., & Jones, I. (2016). Measuring Conceptual Understanding Using Comparative Judgement. International Journal of Research in Undergraduate Mathematics Education, 2(2), 141–164. https://doi.org/10.1007/s40753-016-0024-3
vroom("data-raw/jones/IJRUMEstatsdecisions.csv", .name_repair = janitor::make_clean_names) %>%
  select(judge, contains("candidate")) %>% write_csv("data/Bisson2016_stats.csv")
vroom("data-raw/jones/IJRUMEcalculusdecisions.csv", .name_repair = janitor::make_clean_names) %>%
  select(judge, contains("candidate")) %>% write_csv("data/Bisson2016_calculus.csv")
vroom("data-raw/jones/IJRUMEalgebradecisions.csv", .name_repair = janitor::make_clean_names) %>%
  select(judge, contains("candidate")) %>% write_csv("data/Bisson2016_algebra.csv")

# Davies, B., Alcock, L., & Jones, I. (2020). Comparative judgement, proof summaries and proof comprehension. Educational Studies in Mathematics, 105(2), 181–197.
vroom("data-raw/jones/ESM2020RawDecisionData.csv", .name_repair = janitor::make_clean_names) %>%
  write_csv("data/Davies2020a.csv")

# Jones, I., Bisson, M., Gilmore, C., & Inglis, M. (2019). Measuring conceptual understanding in randomised controlled trials: Can comparative judgement help? British Educational Research Journal, 45(3), 662–680. https://doi.org/10.1002/berj.3519
vroom("data-raw/jones/BERJ2019decisions.csv", .name_repair = janitor::make_clean_names) %>% write_csv("data/Jones2019.csv")

# Jones, I., Wheadon, C., Humphries, S., & Inglis, M. (2016). Fifty years of A‐level mathematics: have standards changed? British Educational Research Journal, 42(4), 543–560. https://doi.org/10.1002/BERJ.3224
vroom("data-raw/jones/BERJperfect.csv", .name_repair = janitor::make_clean_names) %>%
  write_csv("data/Jones2016b_perfect.csv")

# Jones, I., & Inglis, M. (2015). The problem of assessing problem solving: Can comparative judgement help? Educational Studies in Mathematics, 89(3), 337–355. https://doi.org/10.1007/s10649-015-9607-1
vroom("data-raw/jones/ESM2015_ALL.csv", .name_repair = janitor::make_clean_names) %>% 
  write_csv("data/Jones2015a_all-scripts.csv")
vroom("data-raw/jones/ESM2015_250.csv", .name_repair = janitor::make_clean_names) %>% 
  write_csv("data/Jones2015a_subset-of-scripts.csv")

# Sangwin, C., & Kinnear, G. (2021, June 4). Investigating insight and rigour as separate constructs in mathematical proof. https://doi.org/10.35542/osf.io/egks4
# judgement data from http://doi.org/10.5281/zenodo.4893915
sangwin2021 <- read_csv("https://raw.githubusercontent.com/georgekinnear/rigour-insight-students/master/data-out/judgement_data.csv")
sangwin2021out <- sangwin2021 %>% 
  transmute(
    session = str_glue("{study}-{dimension}"),
    judge = JudgeID,
    candidate_chosen = Won,
    candidate_not_chosen = Lost,
    time_taken = TimeTaken
  )
purrr::iwalk(
  split(sangwin2021out, sangwin2021out$session),
  ~ vroom_write(.x, glue::glue("data/Sangwin2021_{.y}.csv"), ",")
)


# Kinnear, G., et al. (2021). Using compative judgement [Unpublished undergraduate dissertation]. The University of Edinburgh.
file_dir <- "data-raw/Kinnear/ug-project/"
kinnear2021 <- vroom(fs::dir_ls(path = file_dir), .name_repair = janitor::make_clean_names, id = "study") %>% 
  mutate(study = str_remove(study, file_dir) %>% str_remove(".csv")) %>% 
  mutate(study = study %>% str_remove("diagnostic") %>% str_remove("test") %>% str_remove("decision")) %>% 
  mutate(study = str_replace(study, "experts", "experts-")) %>% 
  mutate(study = ifelse(str_detect(study, "^expert"), study, paste0("students-", study))) %>% 
  rename(candidate_chosen = chosen, candidate_not_chosen = not_chosen)
kinnear2021 %>% 
  group_by(study) %>% tally()

purrr::iwalk(
  split(kinnear2021, kinnear2021$study),
  ~ vroom_write(.x, glue::glue("data/Kinnear2021_{.y}.csv"), ",")
)

# Jones, S., Scott, C. J., Barnard, L., Highfield, R., Lintott, C., & Baeten, E. (2020-10-05). The Visual Complexity of Coronal Mass Ejections Follows the Solar Cycle. Space Weather, 18(10), Article 10. https://doi.org/10.1029/2020sw002556
# open data: https://figshare.com/s/7e0270daa8153bb0416e
# open code: https://github.com/S-hannon/complexity-solar-cycle
# Note: apparently the comarisons data includes some duplicate rows, see https://github.com/S-hannon/complexity-solar-cycle/blob/3bb74202cd8bbbeddff9bbefdf589aec7072e228/popfss_compare_solar_storms_workflow.py#L308
# Perhaps worth asking the authors to share the processed judging data? Otherwise would have to put effort into getting their code to run.