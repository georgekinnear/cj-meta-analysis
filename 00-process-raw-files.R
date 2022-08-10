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
vroom("data-raw/jones/McMahon2014_teachers.csv", .name_repair = janitor::make_clean_names) %>%
  mutate(
    candidate_chosen = ifelse(chose_a == 1, a, b),
    candidate_not_chosen = ifelse(chose_a == 1, b, a)
  ) %>% 
  select(judge, starts_with("candidate")) %>%
  write_csv("data/McMahon2014_teachers.csv")

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
vroom("data-raw/jones/BERJ_realscripts.csv", .name_repair = janitor::make_clean_names) %>%
  mutate(
    candidate_chosen = ifelse(chose_a == 1, a, b),
    candidate_not_chosen = ifelse(chose_a == 1, b, a)
  ) %>% 
  select(judge, starts_with("candidate")) %>%
  write_csv("data/Jones2016b_realscripts.csv")

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

# Spehar, B., Walker, N., & Taylor, R. P. (2016). Taxonomy of individual
# variations in aesthetic responses to fractal patterns. Frontiers in human neuroscience, 10, 350.
# https://doi.org/10.3389/fnhum.2016.00350

# Experiment 1

# ???

# Experiment 2
sheet1 <- readxl::read_excel("data-raw/Spehar et al/Experiment 2.xlsx", sheet = 1)
sheet2 <- readxl::read_excel("data-raw/Spehar et al/Experiment 2.xlsx", sheet = 2)
sheet3 <- readxl::read_excel("data-raw/Spehar et al/Experiment 2.xlsx", sheet = 3)
sheet4 <- readxl::read_excel("data-raw/Spehar et al/Experiment 2.xlsx", sheet = 4)
sheet5 <- readxl::read_excel("data-raw/Spehar et al/Experiment 2.xlsx", sheet = 5)

# extract the relevant bits of data, in the form we need
dat1 <- sheet1 %>% 
  transmute(judge = subject,
            type = trialcode,
            item1 = stimulusitem2,
            item2 = stimulusitem3,
            choice = Choice) %>% 
  filter(type != "inst1") %>% 
  mutate(
    candidate_chosen = choice,
    candidate_not_chosen = str_remove(paste0(item1,item2), choice)
  ) %>% 
  separate(type, into = c(NA, "type", NA), sep = "_") %>% 
  select(judge, type, starts_with("candidate"))

# now do this across all 5 sheets in an efficient way
all_data <- tibble(seed_image = c(1:5)) %>% 
  mutate(raw_spreadsheet = map(seed_image, ~ readxl::read_excel("data-raw/Spehar et al/Experiment 2.xlsx", sheet = .x))) %>% 
  mutate(
    data = map(raw_spreadsheet, ~ .x %>% 
                 transmute(judge = subject,
                           type = trialcode,
                           item1 = stimulusitem2,
                           item2 = stimulusitem3,
                           choice = Choice) %>% 
                 filter(type != "inst1") %>% 
                 mutate(
                   candidate_chosen = choice,
                   candidate_not_chosen = str_remove(paste0(item1,item2), choice)
                 ) %>% 
                 separate(type, into = c(NA, "type", NA), sep = "_") %>% 
                 select(judge, type, starts_with("candidate")))
  )

spehar2016_expt2 <- all_data %>% 
  select(-raw_spreadsheet) %>% 
  unnest(cols = data)
# visual check that the judge id's are unique across the different spreadsheets,
# and each judge does the same number of judgements as stated in the paper
spehar2016_expt2 %>% 
  ggplot(aes(x = judge)) +
  geom_histogram(binwidth = 1)

spehar2016_expt2 %>% pivot_longer(cols = starts_with("candidate")) %>% select(value) %>% distinct()

purrr::iwalk(
  split(spehar2016_expt2, spehar2016_expt2$type),
  ~ vroom_write(.x, glue::glue("data/Spehar2016_expt2-{.y}.csv"), ",")
)

sirt_output <- sirt::btm(
  data = spehar2016_expt2 %>%
    filter(type == "Thr") %>% 
    mutate(decision = 1) %>% 
    select(candidate_chosen, candidate_not_chosen, decision) %>%
    data.frame,
  judge = spehar2016_expt2 %>%
    filter(type == "Thr") %>%  pull(judge),
  maxit = 400 , fix.eta = 0 , ignore.ties = FALSE
)
sirt_output$mle.rel
sirt_output$effects %>% as_tibble() %>% 
  arrange(-theta)
sirt_output$fit_judges %>% as_tibble()


# Nguyen2021
# https://doi.org/10.1016/j.visres.2020.11.011 (from snowballing)
nguyen2021 <- tibble(path = fs::dir_ls(path = "data-raw/Spehar et al/nguyen2021-expt1/",
                                       glob = "*Response_2*" # TODO - read in all the files instead?
                                       )) %>% 
  mutate(dat = map(path, ~ vroom(.x, col_select = c("Subject_No", "Stimulus_selected", "Stimulus_not_selected")))) %>%
  unnest(cols = dat)

nguyen2021_btm <- sirt::btm(
  data = nguyen2021 %>%
    mutate(decision = 1)%>% 
    select(Stimulus_selected, Stimulus_not_selected, decision) %>%
    data.frame,
  judge = nguyen2021 %>% pull(Subject_No),
  maxit = 400 , fix.eta = 0 , ignore.ties = FALSE
)

# Vatavu, R. D., & Vanderdonckt, J. (2020, November). Design Space and Users’ Preferences for Smartglasses Graphical Menus: A Vignette Study. In 19th International Conference on Mobile and Ubiquitous Multimedia (pp. 1-12).  doi: 10.1145/3428361.3428467
vatavu2020_raw <-
  readxl::read_excel(
    "data-raw/Vatavu and Vanderdonckt (2020)/GlassMenus-Interact2019-23Jan2019.xlsx",
    sheet = 1,
    skip = 59
  )
# data is provided as a matrix for each participant. The matrix is symmetric, so
# the actual judgements appear twice. We need only the upper triangular part.
vatavu2020_items <- tibble(
  item_num = c(1:14),
  item_name = c(
    "BHBi-r",
    "BHUni-l",
    "MCBi-r",
    "MCUni-l",
    "MHBi-r",
    "MHUni-l",
    "MRBi-r",
    "MRUni-r",
    "MVBi-l",
    "MVUni-r",
    "SVBi-l",
    "SVUni-r",
    "THBi-l",
    "THUni-l"
  )
)
upper_triangle <- vatavu2020_items %>% rename(item1_num = item_num, item1 = item_name) %>% 
  crossing(vatavu2020_items %>% rename(item2_num = item_num, item2 = item_name)) %>% 
  filter(item2_num > item1_num) %>% 
  select(item1, item2)
vatavu2020 <- vatavu2020_raw %>% 
  select(judge = PID, item1 = `I vs J`, `BHBi-r`:`THUni-l`) %>% 
  fill(judge) %>% 
  pivot_longer(`BHBi-r`:`THUni-l`, names_to = "item2", values_to = "decision") %>% 
  filter(!is.na(decision)) %>% 
  # TODO - should discuss if this is the right approach for ties
  # discard ties
  filter(decision != "E") %>% 
  # keep only the upper triangle of decisions (the lower triangle is duplicated data)
  semi_join(upper_triangle, by = c("item1", "item2")) %>% 
  transmute(
    judge = judge,
    candidate_chosen = ifelse(decision == "+", item1, item2),
    candidate_not_chosen = ifelse(decision == "-", item1, item2)
  )
# check that the ordering of the items matches what appears in the paper
sirt_output <- sirt::btm(
    data = vatavu2020 %>%
      mutate(decision = 1)%>% 
      select(candidate_chosen, candidate_not_chosen, decision) %>%
      data.frame,
    judge = vatavu2020 %>% pull(judge),
    maxit = 400 , fix.eta = 0 , ignore.ties = FALSE
  )
sirt_output$effects %>% as_tibble() %>% 
  arrange(-theta)
sirt_output$fit_judges %>% as_tibble()

vatavu2020 %>% write_csv("data/Vatavu2020.csv")


# Vatavu2019
# https://doi.org/10.1145/3331160 (snowballing)
Vatavu2019 <-
  readxl::read_excel(
    "data-raw/Vatavu and Vanderdonckt (2020)/GAM-EICS2019-DataSet.xlsx",
    sheet = 1,
    skip = 74
  ) %>% 
  select(judge = ID, item1 = `Adaptive Menus`, `Blinking Menu`:`Weared Menu`) %>% 
  fill(judge) %>% 
  pivot_longer(!c(judge,item1), names_to = "item2", values_to = "decision") %>% 
  filter(!is.na(decision)) %>% 
  # we only need one copy of each comparison
  filter(item1 < item2) %>% 
  # discard ties
  filter(decision != "E") %>%
  transmute(
    judge = judge,
    candidate_chosen = ifelse(decision == "+", item1, item2),
    candidate_not_chosen = ifelse(decision == "-", item1, item2)
  )
  
# check that the ordering of the items matches what appears in the paper
sirt_output <- sirt::btm(
  data = Vatavu2019 %>%
    mutate(decision = 1)%>% 
    select(candidate_chosen, candidate_not_chosen, decision) %>%
    data.frame,
  judge = Vatavu2019 %>% pull(judge),
  maxit = 400 , fix.eta = 0 , ignore.ties = TRUE
)
sirt_output$mle.rel
sirt_output$effects %>% as_tibble() %>% 
  arrange(-theta)
sirt_output$fit_judges %>% as_tibble()

Vatavu2019 %>% write_csv("data/Vatavu2019.csv")


# Mejía Ramos, J.P., Evans, T., Rittberg, C. et al. Mathematicians’ Assessments of the Explanatory Value of Proofs. Axiomathes (2021). doi: 10.1007/s10516-021-09545-8
ramos2021 <- vroom("data-raw/Mejia-Ramos et al. (2021)/Mejia-Ramos et al Binary decisions.csv", .name_repair = janitor::make_clean_names)
ramos2021 <- ramos2021 %>% 
  mutate(group = if_else(group == "A", "Auckland", "Rutgers")) %>% 
  select(-created_at)
purrr::iwalk(
  split(ramos2021, ramos2021$group),
  ~ vroom_write(.x, glue::glue("data/Ramos2021_{.y}.csv"), ",")
)

# Davies, B., Alcock, L., & Jones, I. (2021). What do mathematicians mean by proof? A comparative-judgement study of students’ and mathematicians’ views. The Journal of Mathematical Behavior, 61, 100824.
vroom("data-raw/Davies/ExpertDecisions.csv", .name_repair = janitor::make_clean_names) %>%
  write_csv("data/Davies2021_expert.csv")
vroom("data-raw/Davies/NonExpertDecisions.csv", .name_repair = janitor::make_clean_names) %>%
  write_csv("data/Davies2021_novice.csv")

# Smith, M. (2020). Adaptive Comparative Judgement. In Practice-Focused Research in Further Adult and Vocational Education (pp. 77-98). Palgrave Macmillan, Cham.
smith2020 <- vroom("data-raw/smith/nmm_judgements.csv", .name_repair = janitor::make_clean_names) %>% 
  select(judge, candidate_chosen = chosen, candidate_not_chosen = not_chosen, time_taken)
smith2020 %>% count(judge)
smith2020 %>% count(candidate_chosen)
smith2020 %>% write_csv("data/Smith2020.csv")

# Whitehouse, C., & Pollitt, A. (2012). Using adaptive comparative judgement to obtain a highly reliable rank order in summative assessment. Manchester, NH: AQA Centre for Education Research and Policy. Retrieved from https://cerp.aqa.org.uk/research-library/using-adaptive-comparative-judgement-obtain-highly-reliable-rank-order-summative-assessment
Pollitt2012a <- vroom("data-raw/pollitt/Whitehouse & Pollitt 2012.txt", skip = 590, delim = " ") %>% 
  separate(`Data=`, into = c("judge", "script_a", "script_b", "winner"), sep = "\t") %>% 
  transmute(
    judge = judge,
    candidate_chosen = if_else(winner == script_a, script_a, script_b),
    candidate_not_chosen = if_else(winner == script_a, script_b, script_a)
  )

Pollitt2012a %>% count(judge)
Pollitt2012a %>% count(candidate_chosen)
Pollitt2012a %>% write_csv("data/Pollitt2012a.csv")

# Pollitt, A. (2017). Using professional judgement to equate exam standards. In Standard Setting in Education (pp. 279-298). Springer, Cham.
Pollitt2017 <- vroom("data-raw/pollitt/SSiE Ex 4. 2009.txt", skip = 1057, delim = " ") %>% 
  separate(`Data:`, into = c("judge", "script_a", "script_b", "winner"), sep = " ") %>% 
  transmute(
    judge = judge,
    candidate_chosen = if_else(winner == script_a, script_a, script_b),
    candidate_not_chosen = if_else(winner == script_a, script_b, script_a)
  )

Pollitt2017 %>% count(judge)
Pollitt2017 %>% count(candidate_chosen)
Pollitt2017 %>% write_csv("data/Pollitt2017_example4.csv")

example2 <- vroom("data-raw/pollitt/SSiE Ex 2. 2015.txt", skip = 143, delim = "\t") %>% 
  separate(`Data =`, into = c("judge", "script_a", "script_b", "winner"), sep = "\t") %>% 
  transmute(
    judge = judge,
    candidate_chosen = if_else(winner == script_a, script_a, script_b),
    candidate_not_chosen = if_else(winner == script_a, script_b, script_a)
  )

example2 %>% count(judge)
example2 %>% count(candidate_chosen)
example2 %>% write_csv("data/Pollitt2017_example2.csv")

process_pollitt_data <- function(df, sep = "\t", data_name = "Data") {
  df %>% 
    separate(data_name, into = c("judge", "script_a", "script_b", "winner"), sep = sep) %>% 
    transmute(
      judge = judge,
      candidate_chosen = if_else(winner == script_a, script_a, script_b),
      candidate_not_chosen = if_else(winner == script_a, script_b, script_a)
    )
}

vroom("data-raw/pollitt/additional-data-sets/Art 1 2012.txt", skip = 12, delim = "\t") %>% 
  process_pollitt_data() %>% 
  write_csv("data/PollittX_art1.csv")
vroom("data-raw/pollitt/additional-data-sets/Art 2 2012.txt", skip = 12, delim = "\t") %>% 
  process_pollitt_data() %>% 
  write_csv("data/PollittX_art2.csv")
vroom("data-raw/pollitt/additional-data-sets/Business.txt", skip = 12, delim = "\t") %>% 
  process_pollitt_data() %>% 
  write_csv("data/PollittX_business.csv")
vroom("data-raw/pollitt/additional-data-sets/Design.txt", skip = 12, delim = "\t") %>% 
  process_pollitt_data() %>% 
  write_csv("data/PollittX_design.csv")
vroom("data-raw/pollitt/additional-data-sets/College portfolios.txt", skip = 12, delim = "\t") %>% 
  process_pollitt_data() %>% 
  write_csv("data/PollittX_college.csv")
vroom("data-raw/pollitt/additional-data-sets/EFL Oracy.txt", skip = 12, delim = "\t") %>% 
  process_pollitt_data() %>% 
  write_csv("data/PollittX_efl-oracy.csv")
vroom("data-raw/pollitt/additional-data-sets/Foreign EFL Writing.txt", skip = 12, delim = "\t") %>% 
  process_pollitt_data() %>% 
  write_csv("data/PollittX_efl-writing.csv")
vroom("data-raw/pollitt/additional-data-sets/IELTS Writing.txt", skip = 12, delim = "\t") %>% 
  process_pollitt_data() %>% 
  write_csv("data/PollittX_ielts-writing.csv")
vroom("data-raw/pollitt/additional-data-sets/ItemD 2015.txt", skip = 12, delim = "\t") %>% 
  process_pollitt_data() %>% 
  write_csv("data/PollittX_mcq-difficulty.csv")
vroom("data-raw/pollitt/additional-data-sets/Music.txt", skip = 871, delim = "\t") %>% 
  process_pollitt_data(data_name = "Data =", sep = " ") %>% 
  write_csv("data/PollittX_music.csv")
vroom("data-raw/pollitt/additional-data-sets/PeerAss.txt", skip = 12, delim = "\t") %>% 
  process_pollitt_data() %>% 
  write_csv("data/PollittX_peer-assessment.csv")
vroom("data-raw/pollitt/additional-data-sets/Philo 1 2015.txt", skip = 12, delim = "\t") %>% 
  process_pollitt_data() %>% 
  write_csv("data/PollittX_philosophy1.csv")
vroom("data-raw/pollitt/additional-data-sets/Philo 2.1 2016.txt", skip = 12, delim = "\t") %>% 
  process_pollitt_data() %>% 
  write_csv("data/PollittX_philosophy2a.csv")
vroom("data-raw/pollitt/additional-data-sets/Philo 2.2 2016.txt", skip = 12, delim = "\t") %>% 
  process_pollitt_data() %>% 
  write_csv("data/PollittX_philosophy2b.csv")
vroom("data-raw/pollitt/additional-data-sets/Philo 2.3 2016.txt", skip = 12, delim = "\t") %>% 
  process_pollitt_data() %>% 
  write_csv("data/PollittX_philosophy2c.csv")

# Luckett, C., Burns, S., & Jenkinson, L. (2018, September 21). Estimates of Relative Acceptability from Paired Preferences. https://doi.org/10.31234/osf.io/gvq97
vroom("data-raw/luckett/cola.csv", .name_repair = janitor::make_clean_names) %>% 
  transmute(session = session,
            judge = subject,
            candidate_chosen = winner,
            candidate_not_chosen = loser) %>% 
  write_csv("data/Luckett2018_cola.csv")
vroom("data-raw/luckett/IceCream.csv", .name_repair = janitor::make_clean_names) %>% 
  transmute(judge = str_glue("session{session}_subject{subject_code}"),
            candidate_chosen = winner,
            candidate_not_chosen = loser) %>% 
  write_csv("data/Luckett2018_icecream.csv")
vroom("data-raw/luckett/Pizza.csv", .name_repair = janitor::make_clean_names) %>% 
  transmute(judge = subject_code,
            candidate_chosen = winner,
            candidate_not_chosen = loser) %>% 
  write_csv("data/Luckett2018_pizza.csv")
vroom("data-raw/luckett/coldbrew.csv", .name_repair = janitor::make_clean_names) %>% 
  transmute(judge = subject_code,
            candidate_chosen = winner,
            candidate_not_chosen = loser) %>% 
  write_csv("data/Luckett2018_coldbrew.csv")


# LuckettX
vroom("data-raw/luckett/extra-data/odor_fam.csv", .name_repair = janitor::make_clean_names) %>% 
  transmute(judge = subject,
            candidate_chosen = winner,
            candidate_not_chosen = loser) %>% 
  write_csv("data/LuckettX_odor-familiar.csv")
vroom("data-raw/luckett/extra-data/odor_pleasantness.csv", .name_repair = janitor::make_clean_names) %>% 
  transmute(judge = subject,
            candidate_chosen = winner,
            candidate_not_chosen = loser) %>% 
  write_csv("data/LuckettX_odor-pleasant.csv")


# StadthagenGonzalez2019
# 10.1177/1367006917728390
engspa <- readxl::read_excel("data-raw/Stadthagen-Gonzalez et al/Stadthagen-Gonzalez et al 2019 (Adjective-Noun).xlsx", sheet = 1)
sg19_engspa <- engspa %>% 
  mutate(judge = paste0(row_number(), "_", `Participant ID`)) %>% 
  select(-`Participant ID`) %>% 
  pivot_longer(cols = !judge, names_to = "comparison", values_to = "decision") %>% 
  separate(comparison, into = c("variant1", "variant2", "base_sentence"), sep = c(1:2)) %>% 
  transmute(
    judge = judge,
    candidate_chosen = paste0(decision, base_sentence),
    candidate_not_chosen = ifelse(decision == variant1, paste0(variant2, base_sentence), paste0(variant1, base_sentence))
  )
sg19_engspa %>% write_csv("data/StadthagenGonzalez2019_eng-to-spa.csv")

spaeng <- readxl::read_excel("data-raw/Stadthagen-Gonzalez et al/Stadthagen-Gonzalez et al 2019 (Adjective-Noun).xlsx", sheet = 2)
sg19_spaeng <- spaeng %>% 
  mutate(judge = paste0(row_number(), "_", `ParticipantID`)) %>% 
  select(-`ParticipantID`) %>%
  select(judge, starts_with(c("E", "F", "G", "H"))) %>% 
  pivot_longer(cols = !judge, names_to = "comparison", values_to = "decision") %>% 
  separate(comparison, into = c("variant1", "variant2", "base_sentence"), sep = c(1:2)) %>% 
  transmute(
    judge = judge,
    candidate_chosen = paste0(decision, base_sentence),
    candidate_not_chosen = ifelse(decision == variant1, paste0(variant2, base_sentence), paste0(variant1, base_sentence))
  )
sg19_spaeng %>% write_csv("data/StadthagenGonzalez2019_spa-to-eng.csv")

sg19_btm <- sirt::btm(
  data = sg19_engspa %>%
    select(candidate_chosen, candidate_not_chosen) %>% 
    mutate(winner = 1) %>%
    data.frame,
  judge = sg19_engspa %>% pull(judge),
  maxit = 400 , fix.eta = 0 , ignore.ties = FALSE
)

# in the paper they compute 4 scores (see Table 3), perhaps just based on the letters?
sg19_reduced_btm <- sirt::btm(
  data = sg19_engspa %>%
    select(candidate_chosen, candidate_not_chosen) %>% 
    mutate(across(starts_with("candidate"), ~ str_remove(., "[1-6]"))) %>% 
    mutate(winner = 1) %>%
    data.frame,
  judge = sg19_engspa %>% pull(judge),
  maxit = 400 , fix.eta = 0 , ignore.ties = FALSE
)

# Isnac2020
# 10.17051/ilkonline.2020.728048

# Author (Dogan) provided raw data in SPSS format
library(haven)
dogan <- read_sav("data-raw/dogan/RAW DATA A.sav")

dogan %>% 
  zap_labels() %>% # get rid of the SPSS labels on the a_b column
  rownames_to_column(var = "judge") %>% 
  pivot_longer(
    cols = contains("_"),
    names_to = "pair",
    values_to = "decision"
  ) %>% 
  separate(pair, into = c("left", "right"), sep = "_") %>% 
  mutate(
    candidate_chosen = ifelse(decision == 1, left, right),
    candidate_not_chosen = ifelse(decision == 1, right, left),
  ) %>% 
  select(judge, starts_with("candidate")) %>% 
  write_csv("data/Isnac2020.csv")

# AlMaimani2017
# 10.1145/3025453.3025655
almaimani2017 <- read_csv("data-raw/maimani-roudat/Book2.csv")
# 12 judges
# 4 patches, named A,B,C,D
# all pairs were compared, twice
almaimani2017 %>% 
  transmute(
    judge = userId,
    item1 = condition1,
    item2 = condition2,
    choice1 = case_when(
      flex1Cond1 == 2 ~ condition1,
      flex1Cond2 == 2 ~ condition2,
      # ties were allowed, but were rare - just exclude them
      TRUE ~ NA_character_
    ),
    choice2 = case_when(
      flex2Cond1 == 2 ~ condition1,
      flex2Cond2 == 2 ~ condition2,
      # ties were allowed, but were rare - just exclude them
      TRUE ~ NA_character_
    )
  ) %>% 
  # try without the second choice, not sure if that is part of the data?
  select(-choice2) %>% 
  pivot_longer(cols = starts_with("choice"), names_to = "occasion", values_to = "item_chosen") %>% 
  filter(!is.na(item_chosen)) %>% 
  transmute(
    judge = judge,
    candidate_chosen = item_chosen,
    candidate_not_chosen = str_remove(paste0(item1, item2), item_chosen)
  ) %>% 
  write_csv("data/AlMaimani2017.csv")

# check that the ordering of the items matches what appears in the paper
dat <- read_csv("data/AlMaimani2017.csv")
sirt_output <- sirt::btm(
  data = dat %>%
    mutate(decision = 1)%>% 
    select(candidate_chosen, candidate_not_chosen, decision) %>%
    data.frame,
  judge = dat %>% pull(judge),
  maxit = 400 , fix.eta = 0 , ignore.ties = FALSE
)
sirt_output$mle.rel
sirt_output$effects %>% as_tibble() %>% 
  arrange(-theta)
sirt_output$fit_judges %>% as_tibble()

# Zucco2019
# 10.1177/2053168019832089

# I loaded each of the Rdata files as in their provided .R script, then used this command to write the data out in .csv format:
#   
#   library(tidyverse)
# the.set$the.set %>% as_tibble() %>% group_by(ref) %>% tally()
# the.set$the.set %>% as_tibble() %>% write_csv("data-abcp.csv")
# 
# (and similarly for data-bls)
zucco2019_experts <- read_csv("data-raw/zucco/data-abcp.csv")
zucco2019_experts %>% 
  transmute(
    judge = ref,
    candidate_chosen = ifelse(winX1, X1, X2),
    candidate_not_chosen = ifelse(winX1, X2, X1),
  ) %>% 
  write_csv("data/Zucco2019_experts.csv")
zucco2019_legislators <- read_csv("data-raw/zucco/data-bls.csv")
zucco2019_legislators %>% 
  transmute(
    judge = ref,
    candidate_chosen = ifelse(winX1, X1, X2),
    candidate_not_chosen = ifelse(winX1, X2, X1),
  ) %>% 
  write_csv("data/Zucco2019_legislators.csv")


# Bramley2018
# Bramley, T., & Vitello, S. (2019). The effect of adaptivity on the reliability coefficient in adaptive comparative judgement. Assessment in Education: Principles, Policy & Practice, 26, 43–58.
# doi: 10.1080/0969594x.2017.1418734
bramley2018 <- vroom(fs::dir_ls(path = "data-raw/Cambridge Assessment/"), .name_repair = janitor::make_clean_names, id = "study")
bramley2018 %>% 
  transmute(
    study = case_when(
      str_detect(study, "AugACJ") ~ "1a",
      str_detect(study, "AugFixed") ~ "1b",
      str_detect(study, "SepFixed") ~ "2"
    ),
    judge = judge,
    candidate_chosen = winner,
    candidate_not_chosen = loser
  ) %>% 
  nest(data = !study) %>% 
  purrr::pwalk(function(data, study) { vroom_write(data, glue::glue("data/Bramley2018_{study}.csv"), ",") })

purrr::iwalk(
  split(jones2015, jones2015$session),
  ~ vroom_write(.x, glue::glue("data/Jones2014_{.y}.csv"), ",")
)
jones2015 %>% group_by(session, judge) %>% tally() %>% count()


# Coertjens2021
# Coertjens, L., Lesterhuis, M., De Winter, B. Y., Goossens, M., De Maeyer, S., & Michels, N. R. (2021). Improving Self-Reflection Assessment Practices: Comparative Judgment as an Alternative to Rubrics. Teaching and Learning in Medicine, 1-11.
# doi: 10.1080/10401334.2021.1877709
Coertjens2021 <- read_csv("data-raw/Belgians/CoertjensEtAl_EARLI2017_and_TLM2021.csv") %>% 
  transmute(
    judge = `assessor Anonymous`,
    candidate_chosen = `selected representation`,
    candidate_not_chosen = ifelse(`selected representation` == `representation A`, `representation B`, `representation A`)
  ) %>% 
  write_csv("data/Coertjens2021.csv")

# Holmes2017
# citation: Holmes, S. D., He, Q., & Meadows, M. (2017). An investigation of construct
# relevant and irrelevant features of mathematics problem-solving questions using
# comparative judgement and Kelly’s Repertory Grid. Research in Mathematics Education, 19(2),
# 112-129.
# doi: 10.1080/14794802.2017.1334576
holmes2017 <- vroom("data-raw/Ofqual/Holmes_2017.csv", .name_repair = janitor::make_clean_names) %>% 
  select(judge, starts_with("candidate")) %>% 
  write_csv("data/Holmes2017.csv")

# Holmes2018
# citation: Holmes, S. D., Meadows, M., Stockford, I., & He, Q. (2018). Investigating
# the comparability of examination difficulty using comparative judgement and Rasch
# modelling. International Journal of Testing, 18, 366–391.
# doi: 10.1080/15305058.2018.1486316
holmes2018 <- vroom("data-raw/Ofqual/Holmes_2018.csv", .name_repair = janitor::make_clean_names) %>% 
  select(judge, starts_with("candidate")) %>% 
  write_csv("data/Holmes2018.csv")

# investigate the data, since it doesn't seem to fit with the paper
holmesparts <-
  holmes2018 %>%
  pivot_longer(cols = starts_with("cand"),
               names_to = "col",
               values_to = "item") %>%
  select(item) %>%
  distinct() %>%
  separate(item, sep = "[-_]Q_", into = c("paper", "part")) %>%
  mutate(question_number = str_extract(part, "\\d*"))

homlesparts_eng <- holmesparts %>%
  filter(str_detect(paper, "ENG")) %>%
  separate(paper, into = c("board", "paper"), sep = "_") %>% 
  mutate(paper = str_trim(paper))

homlesparts_eng %>% 
  group_by(board, paper) %>% 
  summarise(
    n_qs = n_distinct(question_number),
    n_parts = n_distinct(part)
  ) %>%
  arrange(board, paper) %>% 
  knitr::kable(format = "markdown")

homlesparts_eng %>% 
  group_by(board, paper) %>% 
  summarise(
    n_qs = n_distinct(question_number),
    n_parts = n_distinct(part)
  ) %>% 
  filter(!str_detect(paper, "8300")) %>% 
  mutate(tier = case_when(
    board %in% c("ENGAQ", "ENGED") ~ ifelse(str_detect(paper, "F"), "Foundation", "Higher"),
    board == "ENGOC" & str_detect(paper, "J560") ~ ifelse(str_detect(paper, "01|02|03"), "Foundation", "Higher"),
    board == "ENGOC" & str_detect(paper, "A501|A502") ~ "Higher",
    board == "ENGOC" & str_detect(paper, "A503") ~ "Foundation",
  )) %>%
  group_by(board, tier) %>% 
  summarise(
    n_parts = sum(n_qs)
  )

# Settembri2018
# citation: Settembri, P., Van Gasse, R., Coertjens, L., & De Maeyer, S. (2018). Oranges
# and Apples? Using Comparative Judgement for Reliable Briefing Paper Assessment
# in Simulation Games. In Simulations of Decision-Making as Active Learning Tools (pp. 93-108). Springer, Cham.
# doi: 10.1007/978-3-319-74147-5_8
settembri2018 <- vroom("data-raw/Belgians/Settembri2018.csv", .name_repair = janitor::make_clean_names) %>% 
  transmute(
    judge = `assessor`,
    candidate_chosen = `selected_representation`,
    candidate_not_chosen = ifelse(`selected_representation` == `representation_a`, `representation_b`, `representation_a`)
  ) %>% 
  write_csv("data/Settembri2018.csv")

# project_id: Coertjens2015
# citation: "Coertjens, Liesje; Verhavert, San; Lesterhuis, Marije; Goossens, Maarten; De Maeyer, Sven. Is comparative judgment more efficient? An explorative study into the reliability efficiency trade-off when using rubrics or comparative judgment. Association for Educational Assessment Europe Conference (Glasgow, Scotland, from 05/11/2015 to 7/11/2015)."
Coertjens2015 <- vroom("data-raw/Belgians/Coertjens 2015 AEA/Coertjens 2015 AEA judgements stress.csv",
                       .name_repair = janitor::make_clean_names) %>% 
  filter(selected_object != "N/A") %>% 
  transmute(
    judge = `assessor_r`,
    candidate_chosen = `selected_object`,
    candidate_not_chosen = ifelse(`selected_object` == `object_a`, `object_b`, `object_a`)
  ) %>% 
  write_csv("data/Coertjens2015_stress.csv")

# Daal2017
# citation: 'van Daal, T., Lesterhuis, M., Coertjens, L., van de Kamp, M. T., Donche,
#     V., & De Maeyer, S. (2017, August). The complexity of assessing student work using
#     comparative judgment: The moderating role of decision accuracy. In Frontiers in
#     Education (Vol. 2, p. 44). Frontiers.'
# doi: 10.3389/feduc.2017.00044
sample1 <- vroom("data-raw/Belgians/van Daal 2017 Frontiers/Coertjens 2015 AEA judgements kinderen.csv",
                 .name_repair = janitor::make_clean_names) %>% 
  transmute(
    judge = `assessor_r`,
    candidate_chosen = `selected_object`,
    candidate_not_chosen = ifelse(`selected_object` == `object_a`, `object_b`, `object_a`)
  ) %>% 
  write_csv("data/Daal2017_sample1.csv")

sample2 <- vroom("data-raw/Belgians/van Daal 2017 Frontiers/Coertjens 2015 AEA judgements organ.csv",
                 .name_repair = janitor::make_clean_names) %>% 
  transmute(
    judge = `assessor_r`,
    candidate_chosen = `selected_object`,
    candidate_not_chosen = ifelse(`selected_object` == `object_a`, `object_b`, `object_a`)
  ) %>% 
  write_csv("data/Daal2017_sample2.csv")

sample3 <- vroom("data-raw/Belgians/van de Kamp et al 2021/van de Kamp et al 2021 The relationship of types of exploration activities with originality of visual arts designs.csv",
                 .name_repair = janitor::make_clean_names)
# There are no judge identifiers in this spreadsheet

# Esen2019
# citation: Esen, Y. D. (2019). Scaling the teachers’ perception of competence regarding
# measurement and evaluation. [Unpublished Masters dissertation]. Ankara University.
esen2019 <- readxl::read_excel("data-raw/dogan/RAW DATA B.xlsx", skip = 1)
esen2019 %>% 
  rename(judge = `...1`) %>% 
  pivot_longer(
    cols = !judge,
    names_to = "pair",
    values_to = "decision"
  ) %>% 
  separate(pair, into = c("left", "right"), sep = 1) %>% 
  mutate(
    candidate_chosen = ifelse(decision == 1, left, right),
    candidate_not_chosen = ifelse(decision == 1, right, left),
  ) %>% 
  select(judge, starts_with("candidate")) %>% 
  write_csv("data/Esen2019.csv")

# Clark2018
# citation: Clark, A. P., Howard, K. L., Woods, A. T., Penton-Voak, I. S., & Neumann,
# C. (2018). Why rate when you could compare? Using the “EloChoice” package to assess
# pairwise comparisons of perceived physical strength. PloS one, 13(1), e0190393.
# doi: 10.1371/journal.pone.0190393
clark2018 <- vroom(fs::dir_ls(path = "data-raw/clark2018/"), .name_repair = janitor::make_clean_names, id = "study")
clark2018 %>% 
  transmute(
    study = str_extract(study, "Study(\\d)"),
    judge = rater,
    candidate_chosen = winner,
    candidate_not_chosen = loser
  ) %>% 
  nest(data = !study) %>% 
  purrr::pwalk(function(data, study) { vroom_write(data, glue::glue("data/Clark2018_{study}.csv"), ",") })

# Jones, S., Scott, C. J., Barnard, L., Highfield, R., Lintott, C., & Baeten, E. (2020-10-05). The Visual Complexity of Coronal Mass Ejections Follows the Solar Cycle. Space Weather, 18(10), Article 10. https://doi.org/10.1029/2020sw002556
# open data: https://figshare.com/s/7e0270daa8153bb0416e
# open code: https://github.com/S-hannon/complexity-solar-cycle
# Note: apparently the comarisons data includes some duplicate rows, see https://github.com/S-hannon/complexity-solar-cycle/blob/3bb74202cd8bbbeddff9bbefdf589aec7072e228/popfss_compare_solar_storms_workflow.py#L308
# Perhaps worth asking the authors to share the processed judging data? Otherwise would have to put effort into getting their code to run.