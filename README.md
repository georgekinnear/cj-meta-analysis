# CJ meta-analysis

## Overall aim

This article should be the one that people cite when they do a CJ study, to justify their approach to checking reliability.

Something like "Comparative judgement as a research tool: a meta-analysis of reliability"

* Provide a self-contained introduction to CJ and BTM
  * Perhaps also a bit of a survey of the range of uses in the literature, as part of describing our sample?
* Describe the different approaches to computing reliability and debate their merits
* Include meta-analysis on SSR and split-halves to back up guidance

### Scope

* Use of CJ in research generally - may be in education but could be (e.g.) psychology, business, ....
  * Much broader than just mathematics education.
  * Focus on research rather than practical use in education - how to draw that line clearly? Perhaps "published => research" is good enough (i.e. someone using CJ for practical teaching but taking the time to write it up, counts as research)
  * Can also include research that is not published (criteria needed there?)
  * Categories:
    - Peer reviewed articles
    - Reports (e.g. Ofqual, conference proceedings)
    - Unpublished
* Comparative judgement
  * Not using adaptivity
  * The paired decisions are sent to Bradley-Terry and reliability is computed. (Some research will use paired comparisons but never combine those to produce a rank order, so we would not include such studies.)

## Method

#### Systematic approach to identifying CJ studies

See [details of plan for literature search](lit-search/README.md).

* Invite each lead author to contribute data
  - remember to explicity ask whether we have permission to republish the dataset along with our open data+code
* Send a followup reminder 1 month later if they have not responded
* Have a closing date one month after that, beyond which we will count it as a null response

#### Collecting and storing the data

* Perhaps enough to simply email and ask the lead author to reply with the .csv (though we could still use an online form to gather responses)
* We need to add metadata to [data/00-judging_sessions.yml](data/00-judging_sessions.yml)
* As part of that process, we need to look closely at the data that has been provided and compare with what is reported in the paper (see 00-process-raw-files.R and 01-data-summary.Rmd)
* Technical point: in cases where the researcher(s) have filtered out judges (e.g. for badly misfitting or implausibly low time spent judging) do we want the _raw_ judgement data or the _filtered_ judgement data? Perhaps the line to take is that we want the judgement data "as analysed in the research", i.e. after filtering?

## RQ1: How do assessment characteristics influence reliability?

Building on the prior findings of Verhavert et al. (2019), where the number of comparisons per representation had the strongest association with reliability, we will investigate the impact on reliability of various characteristics that can be varied when setting up a CJ session:

| Characteristic | Description |
|----------------|-------------|
| N_A	| Number of assessors (judges) |
| N_R	| Number of representations (scripts/items)
| N_C	| Number of comparisons (i.e. the number of rows in the spreadsheet of decision data)
| N_CR| Number of comparisons per representation (N_C/N_R * 2)
| Expertise	|Judges can be either <ul><li>Expert - with high level of domain-specific knowledge relevant to the task</li><li>Novice - little or no domain-specific knowledge</li><li>Peer - contributed a response to the task that is being judged</li></ul>|

Other things to consider:

* N_CA, the number of comparisons made by each assessor? There has been some discussion about this point, whether judges get fatigued over the course of judging or conversely might improve with experience of the task. It is touched on by Verhavert et al. (2019, bottom of p. 544) but they do not present any data on it.
* format/content of the items - we will gather a short description in the "items" field as we go, then perhaps we should bin them into categories (e.g. multi-page response, short text, maths solution, video, ...)
* median judging time (if available in the data)



## RQ2: How does SSR compare with split-halves reliability?

Verhavert et al. (2018) Figure C1 bottom left panel shows a reasonably good correlation, but with only 29 data points, so this would extend that and could possibly allow for finer-grained analysis based on other assessment characteristics, like in RQ1.


## Other questions?

Split-halves
* How many iterations do you need to do for stable results?
  - For small studies, it may be that you just do all possible splits (and there aren't 1000)
  - Could be "mission creep" to investigate this question along with everything else above.

Misfits
* Is it worth bothering about these?
  * Identify misfits, exclude them, re-run - if the results are always basically the same, then that suggests it's OK to not worry about misfits

Standard errors
* How to interpret the standard errors from BTM?
* How can you decide if one script is "higher" than another? Is there a formal test you can do, beyond just eyeballing?


## Random thoughts
NB - could perhaps also do a simulation study to investigate split-halves, similar to the approach used by Bramley (2015) to investigate the effect of adaptivity on reliability.
![image](https://user-images.githubusercontent.com/30723394/114529618-0de7c600-9c42-11eb-82d1-0e7c91dcc4eb.png)

# References

Bramley, T. (2015). Investigating the reliability of Adaptive Comparative Judgment. Retrieved from http://www.cambridgeassessment.org.uk/

Verhavert, S., Bouwer, R., Donche, V., & De Maeyer, S. (2019). A meta-analysis on the reliability of comparative judgement. Assessment in Education: Principles, Policy & Practice, 26(5), 541–562. https://doi.org/10.1080/0969594X.2019.1602027

Verhavert, S., De Maeyer, S., Donche, V., & Coertjens, L. (2018). Scale Separation Reliability: What Does It Mean in the Context of Comparative Judgment? Applied Psychological Measurement, 42(6), 428–445. https://doi.org/10.1177/0146621617748321
