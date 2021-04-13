# CJ meta-analysis

## Overall aim

This article should be the one that people cite when they do a CJ study, to justify their approach to checking reliability.

Something like "Comparative judgement in mathematics education research: a meta-analysis and users' guide"

* Provide a self-contained introduction to CJ and BTM
  * Perhaps also a bit of a survey of the range of uses in the literature, as part of describing our sample?
* Describe the different approaches to computing reliability and debate their merits
* Include meta-analysis on SSR and split-halves to back up guidance

### Scope

* Mathematics education research
  * Focus specifically on mathematics education? Perhaps that is unnecessarily narrow.
  * Focus on education research rather than practical use in education - how to draw that line clearly? Perhaps "published => research" is good enough (i.e. someone using CJ for practical teaching but taking the time to write it up, counts as research) but we can also include research that is not published (criteria needed there?)
* Comparative judgement
  * Not using adaptivity

### Method

#### Systematic approach to identifying CJ studies

* Do a literature search for uses of "comparative judgement" e.g. https://www.lens.org/lens/search/scholar/list?q=(%22comparative%20judgement%22)
* Consolidate the resulting list, grouping studies by lead author
* Invite each lead author to contribute data
* Send a followup reminder 1 month later if they have not responded
* Have a closing date one month after that, beyond which we will count it as a null response

#### Collecting and storing the data

* Perhaps enough to simply email and ask the lead author to reply with the .csv (though we could still use an online form to gather responses)
* We need to add metadata to [data/00-judging_sessions.yml]

## RQ1: How do assessment characteristics influence reliability?

Building on the prior findings of Verhavert et al. (2019), where the number of comparisons per representation had the strongest association with reliability, we will investigate the impact on reliability of various characteristics that can be varied when setting up a CJ session:

| Characteristic | Description |
|----------------|-------------|
| N_A	| Number of assessors (judges) |
| N_R	| Number of representations (scripts/items)
| N_C	| Number of comparisons (i.e. the number of rows in the spreadsheet of decision data)
| N_CR| Number of comparisons per representation (N_C/N_R * 2)
| Expertise	|Judges can be either <ul><li>Expert - with high level of domain-specific knowledge relevant to the task</li><li>Novice - little or no domain-specific knowledge</li><li>Peer - contributed a response to the task that is being judged</li></ul>|


## RQ2: How does SSR compare with split-halves reliability?

Verhavert et al. (2018) Figure C1 bottom left panel shows a reasonably good correlation, but with only 29 data points, so this would extend that and could possibly allow for finer-grained analysis based on other assessment characteristics, like in RQ1.

Split-halves reliability
* How does it compare to SSR?
* How many iterations do you need to do for stable results?

## Other questions?

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
