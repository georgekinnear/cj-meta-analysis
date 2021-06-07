CJ meta-analysis: final screening
================
George Kinnear
07/06/2021

Divide up the “request data” group between us.

``` r
# TODO: some code to pull out relevant content from the .bib file and produce a spreadsheet
```

## Screening steps

  - For each publication, consult the full-text to confirm there is CJ
    going on.

  - If so, record details in the spreadsheet to prepare for the data
    request emails.

The spreadsheet should look like this:

| Column                       | Value                                                                                                                                               |
| ---------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------- |
| publication details          | this will be a group of columns, produced automatically in the previous step (lens.org link, authors, year, title, doi)                             |
| uses\_cj                     | yes/no - does this publication report on CJ data that is within scope?                                                                              |
| corresponding\_author\_name  | identify the corresponding author (who we will contact about the data request)                                                                      |
| corresponding\_author\_email | e-mail address for the corresponding author                                                                                                         |
| open\_data                   | link to openly-available data, if it exists (otherwise leave blank)                                                                                 |
| open\_data\_notes            | space for comments about the open data, e.g. “judge IDs seem to be missing” or “looks like lots of filtering is needed”                             |
| email\_notes                 | if there is no open data, write a snippet that can be used in the data request email to clarify the request, e.g. “decision files for experiment 2” |
