# Plans for CJ meta-analysis lit search

## Inclusion/exclusion criteria

TODO: flesh out the points made under Scope: https://github.com/georgekinnear/cj-meta-analysis/blob/main/README.md#scope

Possible criteria:

* must be based on actual comparative judgement decisions made by humans, i.e. no simulation studies or use of data like tennis matches to rank players
* written in English

## Search strategy

### lens.org

This searches various datbases (including Crossref), looking at all fields, including title, abstract, keywords and full text.

Search for the following keyword combinations:

- "comparative judgement" OR "comparative judgment"
- ("pairwise comparisons" OR "paired comparisons") AND "Bradley" AND "Terry"  (The inclusion of Bradley+Terry is to ensure there is some use of the Bradley-Terry model to combine the paired comparisons.)

Filtering to publications from 2000 onwards, gives 1156 results: https://link.lens.org/ivKDS6EocKk

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
- The lens.org results are saved here: https://www.lens.org/lens/search/scholar/list?collectionId=190655

Divide them up for us to evaluate according to the criteria above. (TODO: decide a way to do this, and a method for recording the decisions.)
- This is another copy of the lens.org results, where we could remove items to filter them out: https://www.lens.org/lens/search/scholar/list?collectionId=190654 - but that's perhaps hard to keep track of which ones have been screened already.
- Perhaps a way forward is using a downloaded .bib file
  * Here is a download of the lens.org results: [.bib](lens-export-2021-04-26.bib)
  * Using JabRef, these can be added to groups to keep track of decisions, e.g. ![image](https://user-images.githubusercontent.com/30723394/116118433-34334a00-a6b5-11eb-90f5-5f3d6d0bc7a4.png)


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


## Edge cases

What to do about these cases that are unusual?

* Roose, I., Vantieghem, W., Van Damme, K., Lambert, P., Vanderlinde, R., & Van Avermaet, P. (2019). Measuring teachers’ professional vision of inclusive classrooms through video-based comparative judgement. What does it mean to misfit?. International Journal of Educational Research, 98, 257-271.
  - Teachers did CJ on video clips of classroom episodes, deciding "which one is best with regard to two key aspects of inclusive classrooms: positive teacher-student interactions (PTSI) and differentiated instruction (DI)"
  - This is quite different to the scope we had in mind orginally, but now would be well within scope.

* Aaron Kaufman, Gary King, and Mayya Komisarchik. Forthcoming. “How to Measure Legislative District Compactness If You Only Know it When You See It.” American Journal of Political Science. Copy at https://j.mp/2Fs3ESc

  - This preprint uses paired comparisons to gather opinions about the "compactness" of different electoral districts.
  - It argues that paired comparisons are inadequate and instead has participants put a larger set of items into a rank order.
  - However it does report briefly on some pilot CJ studies (Appendix A) though does not report SSR.

* https://doi.org/10.1016/j.ejor.2015.06.069
  - this gives an example of ranking tennis players, but doesn't seem to be using Bradley-Terry (though it cites work that does, which is why it was picked up in the search).

* Reynvoet, B., Vos, H., & Henik, A. (2019). Comparative judgment of familiar objects is modulated by their size. Experimental psychology. https://doi.org/10.1027/1618-3169/a000418
  - PDF available at https://www.researchgate.net/publication/330362323_Comparative_Judgment_of_Familiar_Objects_Is_Modulated_by_Their_Size
  - this is an example of a psychology experiment that has participants do paired comparisons, but does not try to use these to produce a scale

* Araki, K., Hirose, Y., & Komaki, F. (2019). Paired comparison models with age effects modeled as piecewise quadratic splines. International Journal of Forecasting, 35(2), 733-740. https://doi.org/10.1016/j.ijforecast.2018.02.006
  - uses data on sumo wrestlers
  - perhaps representative of a section of the literature that will be drawing on public data, mainly with a technical aspect?
