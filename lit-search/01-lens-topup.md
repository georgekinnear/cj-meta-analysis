Lens topup
================
George Kinnear
07/06/2021

Ben’s original Lens.org search was missing various results. This seemed
to be due to the way the publication date filter was applied (Ben was
specifying year+month+day, while specifying only the year seems pick up
more results).

To check what’s going on, here we compare:

1.  `Original` = Ben’s original .bib file, where the year filter was
    based on the calendar picker (“Date Published = ( 2010-01-01 -
    2021-06-01 )”)
2.  `Topup` = A new version of the .bib file downloaded on 2021-06-07,
    with the date filter applied as “Year Published = ( 2010 - 2021 )”
3.  `Nofilter` = A new version of the .bib file downloaded on
    2021-06-07, with no date filter

Curiously there are 160 results from `Original` that are missing from
`Topup` (more on that below), but there are about 500 new hits (and
about 800 that were date-filtered out in both cases):

| source1  | source2 |    n |
| :------- | :------ | ---: |
| Original | Topup   | 1048 |
| Original | NA      |  160 |
| NA       | Topup   |  492 |
| NA       | NA      |  830 |

Comparing with the results of the same search with no date filter
applied (`Nofilter`):

| source1  | source2 | source3  |    n |
| :------- | :------ | :------- | ---: |
| Original | Topup   | Nofilter | 1048 |
| Original | NA      | Nofilter |  154 |
| Original | NA      | NA       |    6 |
| NA       | Topup   | Nofilter |  492 |
| NA       | NA      | Nofilter |  830 |

The 154 results that appeared in `Original` but not `Topup` are in fact
all from before 2010:

| year |  n |
| :--- | -: |
| 2000 |  6 |
| 2001 |  6 |
| 2002 |  6 |
| 2003 |  7 |
| 2004 | 14 |
| 2005 | 12 |
| 2006 | 22 |
| 2007 | 24 |
| 2008 | 34 |
| 2009 | 23 |

The 6 results that don’t show up in `Nofilter` are more troubling -
these are sources in the `Original` search that are no longer being
returned, making it hard to reproduce our process.

Moreover they include some that were tagged up for inclusion:

| groups                  | n |
| :---------------------- | -: |
| Not Relevant            | 2 |
| Request data, Education | 1 |
| Theoretical             | 1 |
| NA                      | 2 |

| bibtexkey                          | author.x                                                                                     | year.x | title.x                                                                                                                                                                                 | doi.x                         | groups                  |
| :--------------------------------- | :------------------------------------------------------------------------------------------- | :----- | :-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | :---------------------------- | :---------------------- |
| lens.org/030-740-680-225-678       | Zhang XiaoTong, Li LiangTao , Wang XiaoJun , Xiao He , Ji Ning , Wang Jing                   | 2010   | Agricultural landscape preferential model from subjective preference and spatial landscape index:A case study of the characteristics of 11 agricultural landscape partitions in Beijing | 10.3724/sp.j.1011.2010.00180  | Not Relevant            |
| lens.org/071-458-322-887-08X       | Greg J. Strimel , Scott R. Bartholomew , Senay Purzer , Liwei Zhang , Emily Yoshikawa Ruesch | 2020   | Informing engineering design through adaptive comparative judgment                                                                                                                      | 10.1080/03043797.2020.1718614 | Request data, Education |
| lens.org/079-086-540-787-956       | Enoch Kung , Maria Vittoria Bufali, Alec Morton                                              | 2021   | A visual approach to the economic evaluation of vaccines: opening the health economic black box.                                                                                        | 10.1080/14737167.2021.1894931 | Not Relevant            |
| lens.org/096-322-872-135-442       | null HuangTzu-Kuo, C WengRuby , null LinChih-Jen                                             | 2006   | Generalized Bradley-Terry Models and Multi-Class Probability Estimates                                                                                                                  | NA                            | Theoretical             |
| jabref-meta: databaseType:bibtex;} | NA                                                                                           | NA     | NA                                                                                                                                                                                      | NA                            | NA                      |
| jabref-meta: grouping:             | NA                                                                                           | NA     | NA                                                                                                                                                                                      | NA                            | NA                      |

Actually, 2 of them are just JabRef metadata. For the others:

1.  appears in the topup as lens.org/127-146-777-695-049
2.  appears in the topup as lens.org/018-191-594-451-288
3.  doesn’t appear, but is not relevant anyway
4.  is from 2006 so would be excluded anyway

# Conclusion

The date filter seems to have behaved strangely in the original search,
but the new “topup” search fixes this and catches further publications
that should be screened for inclusion.

We extract from the `Topup` results only those items that have not yet
been screened, and write them to a new .bib file,
`lit-search/2021-06-07-topup.bib`.
