# CJ meta-analysis

This repository contains the data and code reported in the following article:

Kinnear, G., Jones, I., & Davies, B. (2025). Comparative judgement as a research tool: A meta-analysis of application and reliability. OSF, 1-37. https://doi.org/10.31219/osf.io/c9q3b_v1

## Abstract

> Comparative judgement (CJ) provides methods for constructing measurement scales, by asking assessors to make a series of pairwise comparisons of the artefacts or representations to be scored. Researchers using CJ need to decide how many assessors to recruit and how many comparisons to collect. They also need to gauge the reliability of the resulting measurement scale, with two different estimates in widespread use: Scale Separation Reliability (SSR) and Split-Halves Reliability (SHR). Previous research has offered guidance on these issues, but with either limited empirical support or focused only on education research. In this paper, we offer guidance based on our analysis of 101 CJ datasets that we collated from previous research across a range of disciplines. We present two novel findings, with substantive implications for future CJ research. First, we find that collecting 10 comparisons for every representation is generally sufficient; a more lenient guideline than previously published. Second, we conclude that SSR can serve as a reliable proxy for inter-rater reliability, but recommend that researchers use a higher threshold of .8, rather than the current standard of .7.


## Method

### Systematic approach to identifying CJ studies

See [details of plan for literature search](lit-search/README.md).


### Data

We collected raw comparative judgement data from each study -- either from existing open data online, or directly from the authors.

* [data/00-projects-with-data.yml](data/00-projects-with-data.yml) contains a description of each of the studies and the comparative judgement sessions within that study
* [data/00-judging_sessions_summary.csv](data/00-judging_sessions_summary.csv) has the same details as the file above, but in .csv format (with one row for each CJ session)
* [data/01-meta-analysis-data.csv](data/01-meta-analysis-data.csv) has the reliability measures that we computed for each of the CJ sessions, which form a key component of our meta-analysis
* the remaining .csv files in the [data/](data) folder contain the judgement data from each of the CJ sessions.
  - These .csv files are named \[study\].csv or \[study\]_\[session\].csv in the case of studies that reported multiple CJ sessions.
  - The format of these .csv files has been standardised from the raw judgement data that we obtained: each file has columns `judge`, `candidate_chosen` and `candidate_not_chosen`, with a row for each decision (recording an identifier for the judge who made that decision, and the identifiers of the winning and losing items).
  
### Code

* [00-load-all-judgement-data.R](00-load-all-judgement-data.R) is a helper script that reads the .csv file for each judging session described in  00-projects-with-data.yml, into a single tidy dataframe called judgement_data.

* [00-process-raw-files.R](00-process-raw-files.R) is a script that contains snippets of code that we used to transform the raw CJ datasets into the standardised format used in the .csv files within the [data/](data) folder. Note that this refers to the raw judgement data saved in the `data-raw` folder, which we have not shared here as part of the repository. This code is included to document the workflow that we applied when standardising the data format.

* [01-data-summary.Rmd](01-data-summary.Rmd) - [output here](01-data-summary.md) - summarises features of the CJ datasets

* [02-computation.R](02-computation.R) - this script fits the Bradley-Terry model to each of the CJ datasets, and computes the reliability statistics featuring in our meta-analysis. It saves intermediate computations (e.g., split-halves) into the `data-cache` folder, which is not shared here due to its size. The final results of the calculations are saved as [data/01-meta-analysis-data.csv](data/01-meta-analysis-data.csv).

* [03-final-analysis.Rmd](03-final-analysis.Rmd) - [output here](03-final-analysis.Rmd) - this includes all of the analyses reported in the paper, and generates all the tables/figures that appear in the paper (these are saved in the `figs-pdf` folder).