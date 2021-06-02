# Plans for CJ meta-analysis lit search

## Inclusion/exclusion criteria

TODO: flesh out the points made under Scope: https://github.com/georgekinnear/cj-meta-analysis/blob/main/README.md#scope

Possible criteria:

* must be based on actual comparative judgement decisions made by humans, i.e. no simulation studies or use of data like tennis matches to rank players
* written in English

## Search strategy

### Database search

The Lens (lens.org) searches various databases, including Crossref. Searches can look for keyword matches in all fields, including title, abstract, keywords and full text.

An initial search for the following keyword combinations:

> "comparative judgement" OR "comparative judgment"
> 
> OR
> 
> ("pairwise comparisons" OR "paired comparisons") AND "Bradley" AND "Terry"
> 
> _(The inclusion of Bradley+Terry is to ensure there is some use of the Bradley-Terry model to combine the paired comparisons.)_

was filtered for publications from 2000 onwards, giving 1156 results: https://link.lens.org/ivKDS6EocKk

Checking the first 50 results, only 1 or 2 were actually relevant (many results mentioned a "comparative judgement" only in the sense of making one comparison, rather than describing the paired comparisons approach).

To make the search more manageable, we refined the query so that a mention of Bradley-Terry is always required:
> (("comparative judgment") OR ("comparative judgement") OR ("paired comparisons") OR ("pairwise comparisons") AND "Bradley" AND "Terry")

This gives 210 results, with the publication year filter removed: https://link.lens.org/dypRiEumdok

### Other sources?
Perhaps also search for work that cites key papers? e.g.

- Thurstone, L. L. (1927). A law of comparative judgment. Psychological review, 34(4), 273.
  * (BUT: has about 7000 citations on Google Scholar!)
- Andrich, D. (1978). Relationships Between the Thurstone and Rasch Approaches to Item Scaling. Applied Psychological Measurement, 2(3), 451–462. https://doi.org/10.1177/014662167800200319
- Bradley, R. A., & Terry, M. E. (1952). Rank analysis of incomplete block designs: I. The method of paired comparisons. Biometrika, 39(3/4), 324.
- ...?

### Snowballing
We can be open to adding additional sources recommended by the researchers that we contact, e.g. from their unpublished manuscripts or conference papers that did not appear in the lens.org database.


## Managing the data
From this, produce a single list of papers.
- The lens.org results are saved here: [.bib](lens-export-2021-04-27.bib) [.csv](lens-export-2021-04-27.csv)

Divide them up for us to evaluate according to the criteria above. (TODO: decide a way to do this, and a method for recording the decisions.)
- Record decisions by editing the `groups` field in the .bib file
- Using JabRef editing groups is quite easy, e.g. ![image](https://user-images.githubusercontent.com/30723394/116118433-34334a00-a6b5-11eb-90f5-5f3d6d0bc7a4.png)

Ultimately this should result in a filtered list of papers where we have identified that CJ was used and there should be judgement data that we could include in our analysis.

Then for the filtered list of papers, approach the lead authors requesting the judgement data:

> Subject: Request for data
> 
> Dear X,
> 
> I am working on a research project that is investigating the use of **[comparative judgement / paired comparisons]** as a research tool, with a focus on the way that reliability has been measured in previous work. In particular, we are planning a meta-analysis of previous studies to better understand the factors that influence reliability.
> 
> As part of this we have searched the literature and identified the following **[works / works]** of yours as being of interest:
> 
> **[insert list - if there are multiple, perhaps number them for ease of reference?]**
> 
> Would it be possible for you to share the (anonymised) raw judgement data from this work with me, to be included in our meta-analysis? This could be a link to an online repository, or simply by attaching data in .csv format to an email.
> If you are able to share data, can you please confirm whether it is OK for us to include this data in our open data repository at the end of the project.
> 
> Also, if you have data from any other studies using comparative judgement that we have not found on the list above (e.g. conference proceedings that may not have been indexed in the database that we searched), I would be keen to hear about those too.
> 
> Best wishes,
> 
> Name

Possibly also circulate a general call, to try to surface unpublished work? e.g. https://twitter.com/tuebang/status/1389908603201626118

## Edge cases

What to do about these cases that are unusual?

* Roose, I., Vantieghem, W., Van Damme, K., Lambert, P., Vanderlinde, R., & Van Avermaet, P. (2019). Measuring teachers’ professional vision of inclusive classrooms through video-based comparative judgement. What does it mean to misfit?. International Journal of Educational Research, 98, 257-271.
  - Teachers did CJ on video clips of classroom episodes, deciding "which one is best with regard to two key aspects of inclusive classrooms: positive teacher-student interactions (PTSI) and differentiated instruction (DI)"
  - This is quite different to the scope we had in mind orginally, but now would be well within scope.

* Aaron Kaufman, Gary King, and Mayya Komisarchik. Forthcoming. “How to Measure Legislative District Compactness If You Only Know it When You See It.” American Journal of Political Science. Copy at https://j.mp/2Fs3ESc

  - This preprint uses paired comparisons to gather opinions about the "compactness" of different electoral districts.
  - It argues that paired comparisons are inadequate and instead has participants put a larger set of items into a rank order.
  - However it does report briefly on some pilot CJ studies (Appendix A) though does not report SSR.

* Bozóki, S., Csató, L., & Temesi, J. (2016). An application of incomplete pairwise comparison matrices for ranking top tennis players. European Journal of Operational Research, 248(1), 211-218. https://doi.org/10.1016/j.ejor.2015.06.069
  - this gives an example of ranking tennis players, but doesn't seem to be using Bradley-Terry (though it cites work that does, which is why it was picked up in the search).

* Reynvoet, B., Vos, H., & Henik, A. (2019). Comparative judgment of familiar objects is modulated by their size. Experimental psychology. https://doi.org/10.1027/1618-3169/a000418
  - PDF available at https://www.researchgate.net/publication/330362323_Comparative_Judgment_of_Familiar_Objects_Is_Modulated_by_Their_Size
  - this is an example of a psychology experiment that has participants do paired comparisons, but does not try to use these to produce a scale

* Araki, K., Hirose, Y., & Komaki, F. (2019). Paired comparison models with age effects modeled as piecewise quadratic splines. International Journal of Forecasting, 35(2), 733-740. https://doi.org/10.1016/j.ijforecast.2018.02.006
  - uses data on sumo wrestlers
  - perhaps representative of a section of the literature that will be drawing on public data, mainly with a technical aspect?

* Kawamura, G., Bagarinao, T., Yong, A. S. K., Fen, T. C., & Lim, L.-S. (2017-01-12). Shelter colour preference of the postlarvae of the giant freshwater prawn Macrobrachium rosenbergii. Fisheries Science, 83(2), 259–264. https://doi.org/10.1007/s12562-017-1062-8
  - Nonhuman judges(!)

* Crispino, M., Arjas, E., Vitelli, V., Barrett, N., & Frigessi, A. (2019). A Bayesian Mallows approach to nontransitive pair comparison data: How human are sounds?. The Annals of Applied Statistics, 13(1), 492-519. http://doi.org/10.1214/18-aoas1203
  - see p. 496: 46 people each made 30 paired comparisons from a set of 12 sounds.
  - but they do not use Bradley-Terry to analyse the results


## Ben's lit review (05/05/2021) 

### Initial searches
Lens.org query: ("comparative judgement" OR "comparative judgment")   OR  (("pairwise comparisons" OR "paired comparisons") AND "Bradley" AND "Terry")
Returned 1211 hits when restricted to 2010 or later. (Curiously the downloaded .bib file only contained 1207). 

I also experiemented with variations including restricting citations to seminal works (Thurstone, Andrich, Luce, Politt etc) but all seems to cut own works known to be desirable for our search. To cut down on irrelevant results, I also tried including 'Reliability' but this was too restrictive. Ultimately, the current search has returend a bunch of junk that I'd prefer to have removed, but I don't think its that big a deal just to do this manually. 

### Categorising (in progress). 

As of 05/05, I've been through ~300/1200 which has taken two sittings of 2-3 hours. Note that these has been artificially speedy given that I decided to filter known relevant works for the first ~100 (e.g. including all of the Lboro work, then all of the Antwerp work etc). See screenshot below for a flavour of progress. 

![image](https://user-images.githubusercontent.com/23063116/117259340-0b276c00-aea2-11eb-8dd6-26b754a14bba.png)

### Issues arising from work-in-progress: 

- Need a decison on ACJ. For now, these are included in the 'request data' category and are very easy to remove/section later. A similar 'adapt' search will do 95% of this for us

- Somewhat lazily, I've put a series of papers in the 'theoretical' cateogry. This will need to be reviewed (and likely split-up) in a second pass. This currently includes work from statistical journals on the nuances of Rasch analysis etc, to education work on CJ but with a more theoretical bent (E.g. Pollitt 2012)

- There are a handful of papers I can't access, either because they don't exist online (and the lens.org listing only includes title but no location) or because my combination of UCL/Lboro/WVU libraries doesn't allow me in. (these are rare but I'm losing a lot of time logging-in and out of various accounts. Suggetsions welcome!)

- Several of George's 'Fringe cases' don't appear in my search. I don't have an explanation for this but thought it worth flagging. 

### Next steps

- I'm happy to finish a first pass next week, but this will need detailed checking. For the most part, I've been reading abstracts (rather than methods sections) in the interests of time. I think this is probably 95% accuracte but I definitely won't rule out having missed things. 

- There are big methodological decisions to be made (ACJ, theoretical works with toy data etc). I think these warrant a meeting in mid-late May. 

-(I haven't shared my JabRef Library because I'm scared of version duplication. Let me know if you'd like to see it).

## Ben's finished lit review (02/06/2021) 

I have now finished parsing the full 1200+ item bank in JabRef, and have uploaded to this GitHub with filename '20210602 CJMetaAnalysis FirstParse'

There are 5 core categories in this first parse: 
- Exclude: Not relevant (876)
- Exclude: Theoretical (93)
- Exclude: Not in English (64)
- Request data: Education-related (91)
- Request data: Other (84)

Total 1208 (One paper has been tagged twice but infuriatingly, I can't find which one!)

There is still substantial work to be done here, including reviewing the 'Theoretical' papers for relevance, and parsing the 'Request data' categories in more detail. There are definitely some in here that won't have data in the exact format that we'll want. (There is also a 99% chance I've spuriously labelled a handful of relevant papers as 'non-relevant'. In the interests of time, I didn't take a detailed look at most papers and used a combination fo title and abstract to make a judgement. This will be fairly reliable but not flawless. We can discuss this in our next meeting!). 

### Comments from George

Ben's query:

> ("comparative judgement" OR "comparative judgment") OR (("pairwise comparisons" OR "paired comparisons") AND "Bradley" AND "Terry")
> + restricted to 2010 onwards

George's query:

> ("comparative judgment") OR ("comparative judgement") OR (("paired comparisons") OR ("pairwise comparisons") AND "Bradley" AND "Terry")
> + filtered for publications from 2000 onwards

These queries look like they should give the same results -- apart from the date filtering -- but they do not.

Comparing the content of the .bib files:

| In search results | N |
| :------ | --: |
| Ben + George | 559 |
| Ben only | 649 |
| George only | 599 |

At the time, my search returned 1156 results; now it gives 1731 - perhaps that accounts for some of the discrepancy, i.e. that Ben's search is picking up many that were not in lens.org at the time I ran my search.

However it doesn't explain why so many of my results are missing from Ben's results. About 200 of the 599 missing ones are pre-2010 so that explains part of it. But still leaves about 400 missing, e.g. from my list of edge cases above:

#### Missing

* Roose at al. (2019). _has "comparative judgement" in the title!_
* Kaufman et al. - preprint, was not in the lens.org results
* Bozóki et al. (2016)
* Reynvoet et al. (2019).
* Araki et al. (2019)

#### Included

* Kawamura et al. (2017).
* Crispino et al. (2019).