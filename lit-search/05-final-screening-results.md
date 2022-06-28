CJ meta-analysis: final screening results
================
George Kinnear
28/06/2022

Here we review the results from the “final screening” spreadsheet.

# Literature search summary

Our steps are:

## 1. Lens search (N=1538)

We had various .bib files from different variants of the search (see
[01-lens-topup](https://github.com/georgekinnear/cj-meta-analysis/blob/main/lit-search/01-lens-topup.md)).

These were consolidated into `20210702 CJMetaAnalysis.bib`, where the
decisions about which ones to carry forward were recorded.

In
[03-final-screening](https://github.com/georgekinnear/cj-meta-analysis/blob/main/lit-search/03-final-screening.md),
we summarised the contents of the .bib file and produced the “final
screening” spreadsheet.

HOWEVER, the .bib file included some entries with publication dates
before our cut-off of 2010. We manually deleted these from the final
screening spreadsheet at the time.

Here we filter the .bib contents to focus only on those published in
2010 or later, and show the breakdown of the decisions:

    ## Some BibTeX entries may have been dropped.
    ##             The result could be malformed.
    ##             Review the .bib file and make sure every single entry starts
    ##             with a '@'.

    ## Warning: `as_data_frame()` was deprecated in tibble 2.0.0.
    ## Please use `as_tibble()` instead.
    ## The signature and semantics have changed, see `?as_tibble`.
    ## This warning is displayed once every 8 hours.
    ## Call `lifecycle::last_lifecycle_warnings()` to see where this warning was generated.

    ## Column `YEAR` contains character strings.
    ##               No coercion to numeric applied.

<table class="table table-striped" style="width: auto !important; margin-left: auto; margin-right: auto;">
<thead>
<tr>
<th style="text-align:left;">
decision
</th>
<th style="text-align:right;">
n
</th>
<th style="text-align:left;">
percent
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">
Exclude - Not in English
</td>
<td style="text-align:right;">
72
</td>
<td style="text-align:left;">
4.7%
</td>
</tr>
<tr>
<td style="text-align:left;">
Exclude - Not Relevant
</td>
<td style="text-align:right;">
1134
</td>
<td style="text-align:left;">
73.7%
</td>
</tr>
<tr>
<td style="text-align:left;">
Exclude - Theoretical
</td>
<td style="text-align:right;">
132
</td>
<td style="text-align:left;">
8.6%
</td>
</tr>
<tr>
<td style="text-align:left;">
Request data
</td>
<td style="text-align:right;">
200
</td>
<td style="text-align:left;">
13.0%
</td>
</tr>
<tr>
<td style="text-align:left;">
Total
</td>
<td style="text-align:right;">
1538
</td>
<td style="text-align:left;">
100.0%
</td>
</tr>
</tbody>
</table>

## 2. Filtered based on abstracts (N=205)

According to the above results, 200 papers were put into the final
screening spreadsheet.

In fact, a further 5 were added to the spreadsheet as a result of
reliability checks on the first pass of screening based on abstracts
(i.e., Ben had rejected these on the first pass, but when George/Ian
were doing reliability checks on 10% of the rejected ones, these were
flagged as being worth including after all).

<table class="table table-striped" style="width: auto !important; margin-left: auto; margin-right: auto;">
<thead>
<tr>
<th style="text-align:left;">
bibtexkey
</th>
<th style="text-align:left;">
author
</th>
<th style="text-align:left;">
year
</th>
<th style="text-align:left;">
title
</th>
<th style="text-align:left;">
doi
</th>
<th style="text-align:left;">
url
</th>
<th style="text-align:left;">
category
</th>
<th style="text-align:left;">
assigned_to
</th>
<th style="text-align:left;">
uses_cj
</th>
<th style="text-align:left;">
APA_citation
</th>
<th style="text-align:left;">
corresponding_author_name
</th>
<th style="text-align:left;">
corresponding_author_email
</th>
<th style="text-align:left;">
who_contact
</th>
<th style="text-align:left;">
date_contacted
</th>
<th style="text-align:left;">
response
</th>
<th style="text-align:left;">
result
</th>
<th style="text-align:left;">
open_data
</th>
<th style="text-align:left;">
open_data_notes
</th>
<th style="text-align:left;">
notes
</th>
<th style="text-align:left;">
email_notes
</th>
<th style="text-align:left;">
request_data
</th>
<th style="text-align:left;">
project_id
</th>
<th style="text-align:left;">
source
</th>
<th style="text-align:left;">
data_retrieved
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">
lens.org/183-375-439-686-983
</td>
<td style="text-align:left;">
Cukurova, Luckin
</td>
<td style="text-align:left;">
2018
</td>
<td style="text-align:left;">
Evaluating Innovative Collaborative Learning Practice: An ‘Innovative’
Delphi Approach
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
<https://lens.org/183-375-439-686-983>
</td>
<td style="text-align:left;">
Education
</td>
<td style="text-align:left;">
Ben
</td>
<td style="text-align:left;">
Yes
</td>
<td style="text-align:left;">
Cukurova, M., & Luckin, R. (2018, June). Evaluating Innovative
Collaborative Learning Practice: An’Innovative’Delphi Approach.
In International Conference of the Learning Sciences (ICLS2018) (Vol. 2,
pp. 681-688). International Society of the Learning Sciences (ISLS).
</td>
<td style="text-align:left;">
Mutlu Cukurova
</td>
<td style="text-align:left;">
<m.cukurova@ucl.ac.uk>
</td>
<td style="text-align:left;">
Ben
</td>
<td style="text-align:left;">
44477
</td>
<td style="text-align:left;">
No research data available
</td>
<td style="text-align:left;">
No
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
Data not stored
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
TRUE
</td>
<td style="text-align:left;">
Cukurova2018
</td>
<td style="text-align:left;">
Lens search
</td>
<td style="text-align:left;">
FALSE
</td>
</tr>
<tr>
<td style="text-align:left;">
lens.org/020-900-024-180-456
</td>
<td style="text-align:left;">
Spehar, B., Walker, N., & Taylor, R.
</td>
<td style="text-align:left;">
2016
</td>
<td style="text-align:left;">
Taxonomy of Individual Variations in Aesthetic Responses to Fractal
Patterns
</td>
<td style="text-align:left;">
10.3389/fnhum.2016.00350
</td>
<td style="text-align:left;">
<https://lens.org/020-900-024-180-456>
</td>
<td style="text-align:left;">
Other
</td>
<td style="text-align:left;">
Ben
</td>
<td style="text-align:left;">
Yes
</td>
<td style="text-align:left;">
Spehar, B., Walker, N., & Taylor, R. P. (2016). Taxonomy of individual
variations in aesthetic responses to fractal patterns. Frontiers in
human neuroscience, 10, 350.
</td>
<td style="text-align:left;">
Richard Taylor
</td>
<td style="text-align:left;">
 <rpt@uoregon.edu>
</td>
<td style="text-align:left;">
Ben
</td>
<td style="text-align:left;">
44477
</td>
<td style="text-align:left;">
Follow-up on 29th Sept
</td>
<td style="text-align:left;">
Yes
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
TRUE
</td>
<td style="text-align:left;">
Spehar2016
</td>
<td style="text-align:left;">
Lens search
</td>
<td style="text-align:left;">
TRUE
</td>
</tr>
<tr>
<td style="text-align:left;">
lens.org/116-204-409-837-73X
</td>
<td style="text-align:left;">
Tabarestani, F. Z. H., Mousazadegan, F., & Ezazshahabi, N.
</td>
<td style="text-align:left;">
2020
</td>
<td style="text-align:left;">
Assessment of the thermal insulation properties of multilayered mittens
considering the airflow speed
</td>
<td style="text-align:left;">
10.1108/ijcst-01-2020-0007
</td>
<td style="text-align:left;">
<https://lens.org/116-204-409-837-73X>
</td>
<td style="text-align:left;">
Other
</td>
<td style="text-align:left;">
Ben
</td>
<td style="text-align:left;">
Yes
</td>
<td style="text-align:left;">
Tabarestani, F. Z. H., Mousazadegan, F., & Ezazshahabi, N. (2020).
Assessment of the thermal insulation properties of multilayered mittens
considering the airflow speed. International Journal of Clothing Science
and Technology.
</td>
<td style="text-align:left;">
fatemeh mousazadegan
</td>
<td style="text-align:left;">
f_mousazadeganaut.ac.ir
</td>
<td style="text-align:left;">
Ben
</td>
<td style="text-align:left;">
44477
</td>
<td style="text-align:left;">
No data available
</td>
<td style="text-align:left;">
No
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
Data not available
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
TRUE
</td>
<td style="text-align:left;">
Tabarestani2020
</td>
<td style="text-align:left;">
Lens search
</td>
<td style="text-align:left;">
FALSE
</td>
</tr>
<tr>
<td style="text-align:left;">
lens.org/071-419-270-496-367
</td>
<td style="text-align:left;">
Al Maimani, A. , & Roudaut, A.
</td>
<td style="text-align:left;">
2017
</td>
<td style="text-align:left;">
CHI - Frozen Suit: Designing a Changeable Stiffness Suit and its
Application to Haptic Games
</td>
<td style="text-align:left;">
10.1145/3025453.3025655
</td>
<td style="text-align:left;">
<https://lens.org/071-419-270-496-367>
</td>
<td style="text-align:left;">
Other
</td>
<td style="text-align:left;">
Ben
</td>
<td style="text-align:left;">
Yes
</td>
<td style="text-align:left;">
Al Maimani, A. , & Roudaut, A. (2017). Frozen suit: designing a
changeable stiffness suit and its application to increase realism in
games. In Proceedings of the 2017 CHI Conference on Human Factors in
Computing Systems (pp. 2440-2448). Association for Computing Machinery
(ACM). <https://doi.org/10.1145/3025453.3025655>
</td>
<td style="text-align:left;">
Ahmed Al Maimani
</td>
<td style="text-align:left;">
<aa15314.2015@my.bristol.ac.uk>
</td>
<td style="text-align:left;">
George
</td>
<td style="text-align:left;">
44412
</td>
<td style="text-align:left;">
22/10 - emailed Anne Roudaut with a nudge; 6/10 - Anne Roudaut: “Bear
with me”; 29/9 - resent email. Also emailed coauthor,
<Anne.Roudaut@bristol.ac.uk>
</td>
<td style="text-align:left;">
Yes - but awaiting a reply from Anne Roudat about how to interpret the
data that was sent
</td>
<td style="text-align:left;">
N
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
TRUE
</td>
<td style="text-align:left;">
AlMaimani2017
</td>
<td style="text-align:left;">
Lens search
</td>
<td style="text-align:left;">
TRUE
</td>
</tr>
<tr>
<td style="text-align:left;">
lens.org/009-314-826-753-228
</td>
<td style="text-align:left;">
Myers, B. R., & Finnegan, E. M.
</td>
<td style="text-align:left;">
2015
</td>
<td style="text-align:left;">
The effects of articulation on the perceived loudness of the projected
voice
</td>
<td style="text-align:left;">
10.1016/j.jvoice.2014.07.022
</td>
<td style="text-align:left;">
<https://lens.org/009-314-826-753-228>
</td>
<td style="text-align:left;">
Other
</td>
<td style="text-align:left;">
Ben
</td>
<td style="text-align:left;">
Yes
</td>
<td style="text-align:left;">
Myers, B. R., & Finnegan, E. M. (2015). The effects of articulation on
the perceived loudness of the projected voice. Journal of Voice, 29(3),
390-e9.
</td>
<td style="text-align:left;">
Brett Myers
</td>
<td style="text-align:left;">
<brett.myers@hsc.utah.edu>
</td>
<td style="text-align:left;">
George
</td>
<td style="text-align:left;">
44412
</td>
<td style="text-align:left;">
6/8: “cannot find the raw data from that study”
</td>
<td style="text-align:left;">
No
</td>
<td style="text-align:left;">
N
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
TRUE
</td>
<td style="text-align:left;">
Myers2015
</td>
<td style="text-align:left;">
Lens search
</td>
<td style="text-align:left;">
FALSE
</td>
</tr>
</tbody>
</table>

Here is the info about how they were coded originally:

<table class="table table-striped" style="width: auto !important; margin-left: auto; margin-right: auto;">
<thead>
<tr>
<th style="text-align:left;">
CATEGORY
</th>
<th style="text-align:left;">
BIBTEXKEY
</th>
<th style="text-align:left;">
ADDRESS
</th>
<th style="text-align:left;">
ANNOTE
</th>
<th style="text-align:left;">
AUTHOR
</th>
<th style="text-align:left;">
BOOKTITLE
</th>
<th style="text-align:left;">
CHAPTER
</th>
<th style="text-align:left;">
CROSSREF
</th>
<th style="text-align:left;">
EDITION
</th>
<th style="text-align:left;">
EDITOR
</th>
<th style="text-align:left;">
HOWPUBLISHED
</th>
<th style="text-align:left;">
INSTITUTION
</th>
<th style="text-align:left;">
JOURNAL
</th>
<th style="text-align:left;">
KEY
</th>
<th style="text-align:left;">
MONTH
</th>
<th style="text-align:left;">
NOTE
</th>
<th style="text-align:left;">
NUMBER
</th>
<th style="text-align:left;">
ORGANIZATION
</th>
<th style="text-align:left;">
PAGES
</th>
<th style="text-align:left;">
PUBLISHER
</th>
<th style="text-align:left;">
SCHOOL
</th>
<th style="text-align:left;">
SERIES
</th>
<th style="text-align:left;">
TITLE
</th>
<th style="text-align:left;">
TYPE
</th>
<th style="text-align:left;">
VOLUME
</th>
<th style="text-align:left;">
YEAR
</th>
<th style="text-align:left;">
DATE
</th>
<th style="text-align:left;">
DOI
</th>
<th style="text-align:left;">
GROUPS
</th>
<th style="text-align:left;">
URL
</th>
<th style="text-align:left;">
COMMENT
</th>
<th style="text-align:left;">
RELEVANCE
</th>
<th style="text-align:left;">
TITLE.1
</th>
<th style="text-align:left;">
YEAR.1
</th>
<th style="text-align:left;">
MONTH.1
</th>
<th style="text-align:left;">
NOTE.1
</th>
<th style="text-align:left;">
DATE.1
</th>
<th style="text-align:left;">
URL.1
</th>
<th style="text-align:left;">
AUTHOR.1
</th>
<th style="text-align:left;">
DOI.1
</th>
<th style="text-align:left;">
PRIORITY
</th>
<th style="text-align:left;">
decision
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">
ARTICLE
</td>
<td style="text-align:left;">
lens.org/009-314-826-753-228
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
Brett R. Myers , Eileen M. Finnegan
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
Journal of voice : official journal of the Voice Foundation
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
March
</td>
<td style="text-align:left;">
url{<https://ir.uiowa.edu/cgi/viewcontent.cgi?article=4719&context=etd>}
; ; ; ; \\url{<https://www.ncbi.nlm.nih.gov/pubmed/25770375>
</td>
<td style="text-align:left;">
3
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
390.e9–15
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
The effects of articulation on the perceived loudness of the projected
voice.
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
29
</td>
<td style="text-align:left;">
2015
</td>
<td style="text-align:left;">
2015-03-12
</td>
<td style="text-align:left;">
10.1016/j.jvoice.2014.07.022
</td>
<td style="text-align:left;">
Not Relevant
</td>
<td style="text-align:left;">
<https://lens.org/009-314-826-753-228>
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
Exclude - Not Relevant
</td>
</tr>
<tr>
<td style="text-align:left;">
ARTICLE
</td>
<td style="text-align:left;">
lens.org/020-900-024-180-456
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
Branka Spehar , Nicholas Walker, Richard Taylor
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
Frontiers in human neuroscience
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
July
</td>
<td style="text-align:left;">
url{<http://journal.frontiersin.org/Article/10.3389/fnhum.2016.00350/abstract>}
; ; ; ; ; ; \\url{<https://core.ac.uk/download/pdf/82854035.pdf>
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
350–350
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
Taxonomy of Individual Variations in Aesthetic Responses to Fractal
Patterns
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
10
</td>
<td style="text-align:left;">
2016
</td>
<td style="text-align:left;">
2016-07-08
</td>
<td style="text-align:left;">
10.3389/fnhum.2016.00350
</td>
<td style="text-align:left;">
Not Relevant
</td>
<td style="text-align:left;">
<https://lens.org/020-900-024-180-456>
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
Exclude - Not Relevant
</td>
</tr>
<tr>
<td style="text-align:left;">
PROCEEDINGS
</td>
<td style="text-align:left;">
lens.org/071-419-270-496-367
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
May
</td>
<td style="text-align:left;">
url{<https://dblp.uni-trier.de/db/conf/chi/chi2017.html#MaimaniR17>} ; ;
; ; ; ; ; ; ; ; \\url{<https://core.ac.uk/download/83929853.pdf>
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
ACM
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
CHI - Frozen Suit: Designing a Changeable Stiffness Suit and its
Application to Haptic Games
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
2017
</td>
<td style="text-align:left;">
2017-05-02
</td>
<td style="text-align:left;">
10.1145/3025453.3025655
</td>
<td style="text-align:left;">
Not Relevant
</td>
<td style="text-align:left;">
<https://lens.org/071-419-270-496-367>
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
Exclude - Not Relevant
</td>
</tr>
<tr>
<td style="text-align:left;">
ARTICLE
</td>
<td style="text-align:left;">
lens.org/116-204-409-837-73X
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
Fatemeh Zahra Hourian Tabarestani, Fatemeh Mousazadegan , Nazanin
Ezazshahabi
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
International Journal of Clothing Science and Technology
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
July
</td>
<td style="text-align:left;">
url{<https://www.emerald.com/insight/content/doi/10.1108/IJCST-01-2020-0007/full/html>
</td>
<td style="text-align:left;">
2
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
218–231
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
Assessment of the thermal insulation properties of multilayered mittens
considering the airflow speed
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
33
</td>
<td style="text-align:left;">
2020
</td>
<td style="text-align:left;">
2020-07-15
</td>
<td style="text-align:left;">
10.1108/ijcst-01-2020-0007
</td>
<td style="text-align:left;">
Not Relevant
</td>
<td style="text-align:left;">
<https://lens.org/116-204-409-837-73X>
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
Exclude - Not Relevant
</td>
</tr>
<tr>
<td style="text-align:left;">
PROCEEDINGS
</td>
<td style="text-align:left;">
lens.org/183-375-439-686-983
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
June
</td>
<td style="text-align:left;">
url{<https://discovery.ucl.ac.uk/id/eprint/10052956/>
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
Evaluating Innovative Collaborative Learning Practice: An ‘Innovative’
Delphi Approach
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
2018
</td>
<td style="text-align:left;">
2018-06-27
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
Not Relevant
</td>
<td style="text-align:left;">
<https://lens.org/183-375-439-686-983>
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
Exclude - Not Relevant
</td>
</tr>
</tbody>
</table>

They were all originally labelled “Not relevant”, so from that category
which originally had 1134 in it, we should deduct these 5, leaving 1129
in the “Not relevant category.

## 3. Identified as using CJ, authors contacted for data (N=102)

<table class="table table-striped" style="width: auto !important; margin-left: auto; margin-right: auto;">
<thead>
<tr>
<th style="text-align:left;">
category
</th>
<th style="text-align:right;">
n
</th>
<th style="text-align:left;">
percent
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">
Education
</td>
<td style="text-align:right;">
82
</td>
<td style="text-align:left;">
80.4%
</td>
</tr>
<tr>
<td style="text-align:left;">
Other
</td>
<td style="text-align:right;">
20
</td>
<td style="text-align:left;">
19.6%
</td>
</tr>
<tr>
<td style="text-align:left;">
Total
</td>
<td style="text-align:right;">
102
</td>
<td style="text-align:left;">
100.0%
</td>
</tr>
</tbody>
</table>

## 4. Data retrieved (N=34+5)

From the 102 studies where data was requested, we received the data for
34:

<table class="table table-striped" style="width: auto !important; margin-left: auto; margin-right: auto;">
<thead>
<tr>
<th style="text-align:left;">
category
</th>
<th style="text-align:right;">
n
</th>
<th style="text-align:left;">
percent
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">
Education
</td>
<td style="text-align:right;">
26
</td>
<td style="text-align:left;">
76.5%
</td>
</tr>
<tr>
<td style="text-align:left;">
Other
</td>
<td style="text-align:right;">
8
</td>
<td style="text-align:left;">
23.5%
</td>
</tr>
<tr>
<td style="text-align:left;">
Total
</td>
<td style="text-align:right;">
34
</td>
<td style="text-align:left;">
100.0%
</td>
</tr>
</tbody>
</table>

In addition, we received data through snowballing, for a further 5
studies:

<table class="table table-striped" style="width: auto !important; margin-left: auto; margin-right: auto;">
<thead>
<tr>
<th style="text-align:left;">
category
</th>
<th style="text-align:right;">
n
</th>
<th style="text-align:left;">
percent
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">
Education
</td>
<td style="text-align:right;">
4
</td>
<td style="text-align:left;">
80.0%
</td>
</tr>
<tr>
<td style="text-align:left;">
Other
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:left;">
20.0%
</td>
</tr>
<tr>
<td style="text-align:left;">
Total
</td>
<td style="text-align:right;">
5
</td>
<td style="text-align:left;">
100.0%
</td>
</tr>
</tbody>
</table>

See here for example of creating a flowchart using DiagrammeR:

<https://mikeyharper.uk/flowcharts-in-r-using-diagrammer/>

    # Define some sample data
    data <- list(a=1000, b=800, c=600, d=400)


    DiagrammeR::grViz("
    digraph graph2 {

    graph [layout = dot]

    # node definitions with substituted label text
    node [shape = rectangle, width = 4, fillcolor = Biege]
    a [label = '@@1']
    b [label = '@@2']
    c [label = '@@3']
    d [label = '@@4']

    a -> b -> c -> d

    }

    [1]:  paste0('Raw Data (n = ', data$a, ')')
    [2]: paste0('Remove Errors (n = ', data$b, ')')
    [3]: paste0('Identify Potential Customers (n = ', data$c, ')')
    [4]: paste0('Select Top Priorities (n = ', data$d, ')')
    ")
