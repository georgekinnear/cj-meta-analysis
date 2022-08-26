CJ meta-analysis: reliability measures
================
George Kinnear
2022-08-22

# About the sample

<table class="table table-striped" style="width: auto !important; margin-left: auto; margin-right: auto;">
<thead>
<tr>
<th style="text-align:left;">
source
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
literature search
</td>
<td style="text-align:right;">
63
</td>
<td style="text-align:left;">
62%
</td>
</tr>
<tr>
<td style="text-align:left;">
snowballing
</td>
<td style="text-align:right;">
38
</td>
<td style="text-align:left;">
38%
</td>
</tr>
</tbody>
</table>
<table class="table table-striped" style="width: auto !important; margin-left: auto; margin-right: auto;">
<thead>
<tr>
<th style="text-align:left;">
adaptivity
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
FALSE
</td>
<td style="text-align:right;">
64
</td>
<td style="text-align:left;">
63%
</td>
</tr>
<tr>
<td style="text-align:left;">
TRUE
</td>
<td style="text-align:right;">
17
</td>
<td style="text-align:left;">
17%
</td>
</tr>
<tr>
<td style="text-align:left;">
unknown
</td>
<td style="text-align:right;">
20
</td>
<td style="text-align:left;">
20%
</td>
</tr>
</tbody>
</table>

# SSR vs split-halves

![](figs-web/03-reliability-measures/ssr-vs-splithalves-1.png)<!-- -->

It is very rare for the split-halves measure to be higher than SSR:

<table class="table table-striped" style="width: auto !important; margin-left: auto; margin-right: auto;">
<thead>
<tr>
<th style="text-align:left;">
judging_session
</th>
<th style="text-align:right;">
observed_N\_A
</th>
<th style="text-align:right;">
observed_N\_R
</th>
<th style="text-align:right;">
observed_N\_C
</th>
<th style="text-align:right;">
mean_split_corr
</th>
<th style="text-align:right;">
ssr
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">
AlMaimani2017
</td>
<td style="text-align:right;">
12
</td>
<td style="text-align:right;">
4
</td>
<td style="text-align:right;">
140
</td>
<td style="text-align:right;">
0.976
</td>
<td style="text-align:right;">
0.954
</td>
</tr>
<tr>
<td style="text-align:left;">
Luckett2018_coldbrew
</td>
<td style="text-align:right;">
100
</td>
<td style="text-align:right;">
3
</td>
<td style="text-align:right;">
300
</td>
<td style="text-align:right;">
0.814
</td>
<td style="text-align:right;">
0.739
</td>
</tr>
</tbody>
</table>

# Low mean split-halves reliability

These sessions have split-halves reliability below 0.7.

The `N_CR` column shows the “number of comparisons per representation”,
i.e. `N_C/N_R`.

<table class="table table-striped" style="width: auto !important; margin-left: auto; margin-right: auto;">
<thead>
<tr>
<th style="text-align:left;">
judging_session
</th>
<th style="text-align:right;">
N_A
</th>
<th style="text-align:right;">
N_R
</th>
<th style="text-align:right;">
N_C
</th>
<th style="text-align:right;">
N_CR
</th>
<th style="text-align:right;">
mean_split_corr
</th>
<th style="text-align:right;">
ssr
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">
Kinnear2021_students-withsolutions2
</td>
<td style="text-align:right;">
9
</td>
<td style="text-align:right;">
20
</td>
<td style="text-align:right;">
331
</td>
<td style="text-align:right;">
16.550
</td>
<td style="text-align:right;">
0.251
</td>
<td style="text-align:right;">
0.679
</td>
</tr>
<tr>
<td style="text-align:left;">
Davies2021_novice
</td>
<td style="text-align:right;">
10
</td>
<td style="text-align:right;">
175
</td>
<td style="text-align:right;">
1740
</td>
<td style="text-align:right;">
9.943
</td>
<td style="text-align:right;">
0.385
</td>
<td style="text-align:right;">
0.658
</td>
</tr>
<tr>
<td style="text-align:left;">
Kinnear2021_students-withsolutions1
</td>
<td style="text-align:right;">
8
</td>
<td style="text-align:right;">
20
</td>
<td style="text-align:right;">
142
</td>
<td style="text-align:right;">
7.100
</td>
<td style="text-align:right;">
0.398
</td>
<td style="text-align:right;">
0.569
</td>
</tr>
<tr>
<td style="text-align:left;">
Spehar2016_expt2-Plain
</td>
<td style="text-align:right;">
50
</td>
<td style="text-align:right;">
9
</td>
<td style="text-align:right;">
3600
</td>
<td style="text-align:right;">
400.000
</td>
<td style="text-align:right;">
0.411
</td>
<td style="text-align:right;">
0.852
</td>
</tr>
<tr>
<td style="text-align:left;">
Sangwin2021_study2-insight
</td>
<td style="text-align:right;">
25
</td>
<td style="text-align:right;">
15
</td>
<td style="text-align:right;">
438
</td>
<td style="text-align:right;">
29.200
</td>
<td style="text-align:right;">
0.438
</td>
<td style="text-align:right;">
0.724
</td>
</tr>
<tr>
<td style="text-align:left;">
Settembri2018
</td>
<td style="text-align:right;">
4
</td>
<td style="text-align:right;">
84
</td>
<td style="text-align:right;">
622
</td>
<td style="text-align:right;">
7.405
</td>
<td style="text-align:right;">
0.455
</td>
<td style="text-align:right;">
0.734
</td>
</tr>
<tr>
<td style="text-align:left;">
Luckett2018_icecream
</td>
<td style="text-align:right;">
87
</td>
<td style="text-align:right;">
5
</td>
<td style="text-align:right;">
435
</td>
<td style="text-align:right;">
87.000
</td>
<td style="text-align:right;">
0.495
</td>
<td style="text-align:right;">
0.513
</td>
</tr>
<tr>
<td style="text-align:left;">
Spehar2016_expt2-Edges
</td>
<td style="text-align:right;">
50
</td>
<td style="text-align:right;">
9
</td>
<td style="text-align:right;">
3600
</td>
<td style="text-align:right;">
400.000
</td>
<td style="text-align:right;">
0.507
</td>
<td style="text-align:right;">
0.890
</td>
</tr>
<tr>
<td style="text-align:left;">
Kinnear2021_students-odd
</td>
<td style="text-align:right;">
12
</td>
<td style="text-align:right;">
10
</td>
<td style="text-align:right;">
215
</td>
<td style="text-align:right;">
21.500
</td>
<td style="text-align:right;">
0.522
</td>
<td style="text-align:right;">
0.804
</td>
</tr>
<tr>
<td style="text-align:left;">
Bramley2018_2
</td>
<td style="text-align:right;">
16
</td>
<td style="text-align:right;">
150
</td>
<td style="text-align:right;">
1097
</td>
<td style="text-align:right;">
7.313
</td>
<td style="text-align:right;">
0.537
</td>
<td style="text-align:right;">
0.738
</td>
</tr>
<tr>
<td style="text-align:left;">
Zucco2019_legislators
</td>
<td style="text-align:right;">
140
</td>
<td style="text-align:right;">
37
</td>
<td style="text-align:right;">
560
</td>
<td style="text-align:right;">
15.135
</td>
<td style="text-align:right;">
0.541
</td>
<td style="text-align:right;">
0.803
</td>
</tr>
<tr>
<td style="text-align:left;">
Jones2013a_peer1
</td>
<td style="text-align:right;">
100
</td>
<td style="text-align:right;">
168
</td>
<td style="text-align:right;">
1200
</td>
<td style="text-align:right;">
7.143
</td>
<td style="text-align:right;">
0.572
</td>
<td style="text-align:right;">
0.820
</td>
</tr>
<tr>
<td style="text-align:left;">
Jones2014_GCSE030211data
</td>
<td style="text-align:right;">
12
</td>
<td style="text-align:right;">
18
</td>
<td style="text-align:right;">
151
</td>
<td style="text-align:right;">
8.389
</td>
<td style="text-align:right;">
0.579
</td>
<td style="text-align:right;">
0.776
</td>
</tr>
<tr>
<td style="text-align:left;">
Kinnear2021_students-withsolutions
</td>
<td style="text-align:right;">
22
</td>
<td style="text-align:right;">
20
</td>
<td style="text-align:right;">
422
</td>
<td style="text-align:right;">
21.100
</td>
<td style="text-align:right;">
0.583
</td>
<td style="text-align:right;">
0.770
</td>
</tr>
<tr>
<td style="text-align:left;">
Kinnear2021_students-withoutsolutions
</td>
<td style="text-align:right;">
22
</td>
<td style="text-align:right;">
20
</td>
<td style="text-align:right;">
440
</td>
<td style="text-align:right;">
22.000
</td>
<td style="text-align:right;">
0.591
</td>
<td style="text-align:right;">
0.774
</td>
</tr>
<tr>
<td style="text-align:left;">
Kinnear2021_experts-odd
</td>
<td style="text-align:right;">
10
</td>
<td style="text-align:right;">
10
</td>
<td style="text-align:right;">
181
</td>
<td style="text-align:right;">
18.100
</td>
<td style="text-align:right;">
0.591
</td>
<td style="text-align:right;">
0.847
</td>
</tr>
<tr>
<td style="text-align:left;">
Daal2017_sample2
</td>
<td style="text-align:right;">
52
</td>
<td style="text-align:right;">
137
</td>
<td style="text-align:right;">
918
</td>
<td style="text-align:right;">
6.701
</td>
<td style="text-align:right;">
0.595
</td>
<td style="text-align:right;">
0.782
</td>
</tr>
<tr>
<td style="text-align:left;">
Jones2013a_peer2
</td>
<td style="text-align:right;">
93
</td>
<td style="text-align:right;">
168
</td>
<td style="text-align:right;">
1210
</td>
<td style="text-align:right;">
7.202
</td>
<td style="text-align:right;">
0.607
</td>
<td style="text-align:right;">
0.841
</td>
</tr>
<tr>
<td style="text-align:left;">
Coertjens2021
</td>
<td style="text-align:right;">
8
</td>
<td style="text-align:right;">
22
</td>
<td style="text-align:right;">
202
</td>
<td style="text-align:right;">
9.182
</td>
<td style="text-align:right;">
0.610
</td>
<td style="text-align:right;">
0.792
</td>
</tr>
<tr>
<td style="text-align:left;">
Jones2016b_realscripts
</td>
<td style="text-align:right;">
20
</td>
<td style="text-align:right;">
546
</td>
<td style="text-align:right;">
5000
</td>
<td style="text-align:right;">
9.158
</td>
<td style="text-align:right;">
0.617
</td>
<td style="text-align:right;">
0.826
</td>
</tr>
<tr>
<td style="text-align:left;">
Bramley2018_1b
</td>
<td style="text-align:right;">
18
</td>
<td style="text-align:right;">
20
</td>
<td style="text-align:right;">
180
</td>
<td style="text-align:right;">
9.000
</td>
<td style="text-align:right;">
0.634
</td>
<td style="text-align:right;">
0.753
</td>
</tr>
<tr>
<td style="text-align:left;">
Jones2013a_expert2
</td>
<td style="text-align:right;">
11
</td>
<td style="text-align:right;">
168
</td>
<td style="text-align:right;">
1217
</td>
<td style="text-align:right;">
7.244
</td>
<td style="text-align:right;">
0.636
</td>
<td style="text-align:right;">
0.878
</td>
</tr>
<tr>
<td style="text-align:left;">
PollittX_college
</td>
<td style="text-align:right;">
5
</td>
<td style="text-align:right;">
72
</td>
<td style="text-align:right;">
411
</td>
<td style="text-align:right;">
5.708
</td>
<td style="text-align:right;">
0.645
</td>
<td style="text-align:right;">
0.934
</td>
</tr>
<tr>
<td style="text-align:left;">
Luckett2018_pizza
</td>
<td style="text-align:right;">
95
</td>
<td style="text-align:right;">
5
</td>
<td style="text-align:right;">
380
</td>
<td style="text-align:right;">
76.000
</td>
<td style="text-align:right;">
0.653
</td>
<td style="text-align:right;">
0.667
</td>
</tr>
<tr>
<td style="text-align:left;">
Holmes2017
</td>
<td style="text-align:right;">
33
</td>
<td style="text-align:right;">
66
</td>
<td style="text-align:right;">
1650
</td>
<td style="text-align:right;">
25.000
</td>
<td style="text-align:right;">
0.657
</td>
<td style="text-align:right;">
0.830
</td>
</tr>
<tr>
<td style="text-align:left;">
Daal2017_sample3
</td>
<td style="text-align:right;">
13
</td>
<td style="text-align:right;">
149
</td>
<td style="text-align:right;">
2251
</td>
<td style="text-align:right;">
15.107
</td>
<td style="text-align:right;">
0.659
</td>
<td style="text-align:right;">
0.870
</td>
</tr>
<tr>
<td style="text-align:left;">
Kinnear2021_experts-withsolutions
</td>
<td style="text-align:right;">
13
</td>
<td style="text-align:right;">
20
</td>
<td style="text-align:right;">
302
</td>
<td style="text-align:right;">
15.100
</td>
<td style="text-align:right;">
0.665
</td>
<td style="text-align:right;">
0.835
</td>
</tr>
<tr>
<td style="text-align:left;">
Jones2013a_expert1
</td>
<td style="text-align:right;">
11
</td>
<td style="text-align:right;">
168
</td>
<td style="text-align:right;">
1217
</td>
<td style="text-align:right;">
7.244
</td>
<td style="text-align:right;">
0.665
</td>
<td style="text-align:right;">
0.896
</td>
</tr>
<tr>
<td style="text-align:left;">
Sangwin2021_study2-understanding
</td>
<td style="text-align:right;">
34
</td>
<td style="text-align:right;">
15
</td>
<td style="text-align:right;">
611
</td>
<td style="text-align:right;">
40.733
</td>
<td style="text-align:right;">
0.675
</td>
<td style="text-align:right;">
0.845
</td>
</tr>
<tr>
<td style="text-align:left;">
Davies2021_expert
</td>
<td style="text-align:right;">
29
</td>
<td style="text-align:right;">
175
</td>
<td style="text-align:right;">
1941
</td>
<td style="text-align:right;">
11.091
</td>
<td style="text-align:right;">
0.679
</td>
<td style="text-align:right;">
0.829
</td>
</tr>
<tr>
<td style="text-align:left;">
Daal2017_sample1
</td>
<td style="text-align:right;">
56
</td>
<td style="text-align:right;">
136
</td>
<td style="text-align:right;">
1229
</td>
<td style="text-align:right;">
9.037
</td>
<td style="text-align:right;">
0.681
</td>
<td style="text-align:right;">
0.819
</td>
</tr>
<tr>
<td style="text-align:left;">
Bisson2019
</td>
<td style="text-align:right;">
10
</td>
<td style="text-align:right;">
206
</td>
<td style="text-align:right;">
2060
</td>
<td style="text-align:right;">
10.000
</td>
<td style="text-align:right;">
0.686
</td>
<td style="text-align:right;">
0.833
</td>
</tr>
<tr>
<td style="text-align:left;">
PollittX_business
</td>
<td style="text-align:right;">
4
</td>
<td style="text-align:right;">
40
</td>
<td style="text-align:right;">
200
</td>
<td style="text-align:right;">
5.000
</td>
<td style="text-align:right;">
0.692
</td>
<td style="text-align:right;">
0.873
</td>
</tr>
<tr>
<td style="text-align:left;">
Spehar2016_expt2-Mountain
</td>
<td style="text-align:right;">
50
</td>
<td style="text-align:right;">
9
</td>
<td style="text-align:right;">
3600
</td>
<td style="text-align:right;">
400.000
</td>
<td style="text-align:right;">
0.694
</td>
<td style="text-align:right;">
0.942
</td>
</tr>
</tbody>
</table>

Omitting the three sessions with N_CR = 400:

    ## Warning: Removed 3 rows containing missing values (geom_point).

![](figs-web/03-reliability-measures/low-splithaves-1.png)<!-- -->

# EloChoice

Here we look at how the EloChoice results compare with the Bradley-Terry
ones.

## Reliability

First of all, how does the measure of reliability in EloChoice compare
with SSR/split-halves?

There are two reliability measures proposed for EloChoice: see
discussion in
<https://cran.r-project.org/web/packages/EloChoice/vignettes/EloChoice-tutorial.html>

We use the weighted version,
![R'](https://latex.codecogs.com/png.image?%5Cdpi%7B110%7D&space;%5Cbg_white&space;R%27 "R'"),
computed based on 1000 iterations.

### SSR vs EloChoice

    ## Warning: ggrepel: 1 unlabeled data points (too many overlaps). Consider
    ## increasing max.overlaps

![](figs-web/03-reliability-measures/ssr-vs-elo-1.png)<!-- -->

### Split-halves vs EloChoice

    ## Warning: ggrepel: 30 unlabeled data points (too many overlaps). Consider
    ## increasing max.overlaps

![](figs-web/03-reliability-measures/splithalves-vs-elo-1.png)<!-- -->

## Scores

How do the scores produced by EloChoice compare with those from
Bradley-Terry?

Previous work has found high agreement:

-   0.95 and 0.94 in Clark et al. (2018)
    <https://doi.org/10.1371/journal.pone.0190393>
-   Kendall’s tau score of 0.96 for rank orders in Gray et al. (2022)
    <https://doi.org/10.48550/arXiv.2204.01805>

![](figs-web/03-reliability-measures/elobtmcorr-histogram-1.png)<!-- -->

<table class="table table-striped" style="width: auto !important; margin-left: auto; margin-right: auto;">
<thead>
<tr>
<th style="text-align:right;">
elo_btm_correlation
</th>
<th style="text-align:left;">
judging_session
</th>
<th style="text-align:right;">
observed_N\_A
</th>
<th style="text-align:right;">
observed_N\_R
</th>
<th style="text-align:right;">
observed_N\_C
</th>
<th style="text-align:right;">
mean_eloR_weighted
</th>
<th style="text-align:right;">
mean_split_corr
</th>
<th style="text-align:right;">
ssr
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:right;">
0.8961612
</td>
<td style="text-align:left;">
PollittX_efl-oracy
</td>
<td style="text-align:right;">
32
</td>
<td style="text-align:right;">
134
</td>
<td style="text-align:right;">
932
</td>
<td style="text-align:right;">
0.6115909
</td>
<td style="text-align:right;">
0.8714799
</td>
<td style="text-align:right;">
0.9708549
</td>
</tr>
<tr>
<td style="text-align:right;">
0.8943021
</td>
<td style="text-align:left;">
PollittX_college
</td>
<td style="text-align:right;">
5
</td>
<td style="text-align:right;">
72
</td>
<td style="text-align:right;">
411
</td>
<td style="text-align:right;">
0.6159040
</td>
<td style="text-align:right;">
0.6449471
</td>
<td style="text-align:right;">
0.9335833
</td>
</tr>
<tr>
<td style="text-align:right;">
0.8938290
</td>
<td style="text-align:left;">
PollittX_music
</td>
<td style="text-align:right;">
39
</td>
<td style="text-align:right;">
804
</td>
<td style="text-align:right;">
4148
</td>
<td style="text-align:right;">
0.6150865
</td>
<td style="text-align:right;">
0.7844205
</td>
<td style="text-align:right;">
0.9634046
</td>
</tr>
<tr>
<td style="text-align:right;">
0.8920074
</td>
<td style="text-align:left;">
PollittX_design
</td>
<td style="text-align:right;">
18
</td>
<td style="text-align:right;">
370
</td>
<td style="text-align:right;">
2569
</td>
<td style="text-align:right;">
0.6190804
</td>
<td style="text-align:right;">
0.9026506
</td>
<td style="text-align:right;">
0.9787771
</td>
</tr>
<tr>
<td style="text-align:right;">
0.8898494
</td>
<td style="text-align:left;">
Jones2015a_subset-of-scripts
</td>
<td style="text-align:right;">
5
</td>
<td style="text-align:right;">
250
</td>
<td style="text-align:right;">
1250
</td>
<td style="text-align:right;">
0.6612726
</td>
<td style="text-align:right;">
0.7933694
</td>
<td style="text-align:right;">
0.9602843
</td>
</tr>
<tr>
<td style="text-align:right;">
0.8801917
</td>
<td style="text-align:left;">
PollittX_ielts-writing
</td>
<td style="text-align:right;">
12
</td>
<td style="text-align:right;">
90
</td>
<td style="text-align:right;">
639
</td>
<td style="text-align:right;">
0.6322866
</td>
<td style="text-align:right;">
0.8506706
</td>
<td style="text-align:right;">
0.9608904
</td>
</tr>
<tr>
<td style="text-align:right;">
0.8793508
</td>
<td style="text-align:left;">
PollittX_philosophy1
</td>
<td style="text-align:right;">
29
</td>
<td style="text-align:right;">
700
</td>
<td style="text-align:right;">
4436
</td>
<td style="text-align:right;">
0.6008077
</td>
<td style="text-align:right;">
0.8635246
</td>
<td style="text-align:right;">
0.9734448
</td>
</tr>
<tr>
<td style="text-align:right;">
0.8679601
</td>
<td style="text-align:left;">
Jones2015a_all-scripts
</td>
<td style="text-align:right;">
15
</td>
<td style="text-align:right;">
750
</td>
<td style="text-align:right;">
3607
</td>
<td style="text-align:right;">
0.6227864
</td>
<td style="text-align:right;">
0.7868488
</td>
<td style="text-align:right;">
0.9714079
</td>
</tr>
<tr>
<td style="text-align:right;">
0.8587650
</td>
<td style="text-align:left;">
Zucco2019_legislators
</td>
<td style="text-align:right;">
140
</td>
<td style="text-align:right;">
37
</td>
<td style="text-align:right;">
560
</td>
<td style="text-align:right;">
0.6385285
</td>
<td style="text-align:right;">
0.5412221
</td>
<td style="text-align:right;">
0.8032555
</td>
</tr>
<tr>
<td style="text-align:right;">
0.8549149
</td>
<td style="text-align:left;">
PollittX_mcq-difficulty
</td>
<td style="text-align:right;">
7
</td>
<td style="text-align:right;">
200
</td>
<td style="text-align:right;">
2002
</td>
<td style="text-align:right;">
0.6299660
</td>
<td style="text-align:right;">
0.9058105
</td>
<td style="text-align:right;">
0.9813463
</td>
</tr>
<tr>
<td style="text-align:right;">
0.8521020
</td>
<td style="text-align:left;">
Pollitt2012a
</td>
<td style="text-align:right;">
23
</td>
<td style="text-align:right;">
564
</td>
<td style="text-align:right;">
3519
</td>
<td style="text-align:right;">
0.6319983
</td>
<td style="text-align:right;">
0.8710961
</td>
<td style="text-align:right;">
0.9779996
</td>
</tr>
<tr>
<td style="text-align:right;">
0.8421523
</td>
<td style="text-align:left;">
Jones2013a_novice
</td>
<td style="text-align:right;">
9
</td>
<td style="text-align:right;">
168
</td>
<td style="text-align:right;">
1217
</td>
<td style="text-align:right;">
0.6184804
</td>
<td style="text-align:right;">
0.8875759
</td>
<td style="text-align:right;">
0.9824695
</td>
</tr>
<tr>
<td style="text-align:right;">
0.8071584
</td>
<td style="text-align:left;">
Bramley2018_1a
</td>
<td style="text-align:right;">
18
</td>
<td style="text-align:right;">
150
</td>
<td style="text-align:right;">
1079
</td>
<td style="text-align:right;">
0.6423687
</td>
<td style="text-align:right;">
0.8780558
</td>
<td style="text-align:right;">
0.9675736
</td>
</tr>
</tbody>
</table>

The
![R'](https://latex.codecogs.com/png.image?%5Cdpi%7B110%7D&space;%5Cbg_white&space;R%27 "R'")
measure is quite low for all of those.

Looking at the relationship of
![R'](https://latex.codecogs.com/png.image?%5Cdpi%7B110%7D&space;%5Cbg_white&space;R%27 "R'")
with the Elo-BTM correlation:

![](figs-web/03-reliability-measures/elo-reliability-vs-btmcorr-1.png)<!-- -->

It’s odd that there are some judging sessions with low
![R'](https://latex.codecogs.com/png.image?%5Cdpi%7B110%7D&space;%5Cbg_white&space;R%27 "R'")
but high correlation of Elo and BTM scores.

<table class="table table-striped" style="width: auto !important; margin-left: auto; margin-right: auto;">
<thead>
<tr>
<th style="text-align:right;">
elo_btm_correlation
</th>
<th style="text-align:left;">
judging_session
</th>
<th style="text-align:right;">
observed_N\_A
</th>
<th style="text-align:right;">
observed_N\_R
</th>
<th style="text-align:right;">
observed_N\_C
</th>
<th style="text-align:right;">
mean_eloR_weighted
</th>
<th style="text-align:right;">
mean_split_corr
</th>
<th style="text-align:right;">
ssr
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:right;">
0.9998125
</td>
<td style="text-align:left;">
Luckett2018_coldbrew
</td>
<td style="text-align:right;">
100
</td>
<td style="text-align:right;">
3
</td>
<td style="text-align:right;">
300
</td>
<td style="text-align:right;">
0.5451398
</td>
<td style="text-align:right;">
0.8137861
</td>
<td style="text-align:right;">
0.7385786
</td>
</tr>
<tr>
<td style="text-align:right;">
0.9998007
</td>
<td style="text-align:left;">
Luckett2018_cola
</td>
<td style="text-align:right;">
99
</td>
<td style="text-align:right;">
6
</td>
<td style="text-align:right;">
990
</td>
<td style="text-align:right;">
0.5614909
</td>
<td style="text-align:right;">
0.8360254
</td>
<td style="text-align:right;">
0.8732902
</td>
</tr>
<tr>
<td style="text-align:right;">
0.9992841
</td>
<td style="text-align:left;">
Luckett2018_pizza
</td>
<td style="text-align:right;">
95
</td>
<td style="text-align:right;">
5
</td>
<td style="text-align:right;">
380
</td>
<td style="text-align:right;">
0.5424153
</td>
<td style="text-align:right;">
0.6526395
</td>
<td style="text-align:right;">
0.6671128
</td>
</tr>
<tr>
<td style="text-align:right;">
0.9992376
</td>
<td style="text-align:left;">
Spehar2016_expt2-Mountain
</td>
<td style="text-align:right;">
50
</td>
<td style="text-align:right;">
9
</td>
<td style="text-align:right;">
3600
</td>
<td style="text-align:right;">
0.5598559
</td>
<td style="text-align:right;">
0.6939253
</td>
<td style="text-align:right;">
0.9422777
</td>
</tr>
<tr>
<td style="text-align:right;">
0.9984449
</td>
<td style="text-align:left;">
Isnac2020
</td>
<td style="text-align:right;">
444
</td>
<td style="text-align:right;">
8
</td>
<td style="text-align:right;">
12432
</td>
<td style="text-align:right;">
0.5784039
</td>
<td style="text-align:right;">
0.9666396
</td>
<td style="text-align:right;">
0.9885587
</td>
</tr>
<tr>
<td style="text-align:right;">
0.9977033
</td>
<td style="text-align:left;">
Spehar2016_expt2-Edges
</td>
<td style="text-align:right;">
50
</td>
<td style="text-align:right;">
9
</td>
<td style="text-align:right;">
3600
</td>
<td style="text-align:right;">
0.5321237
</td>
<td style="text-align:right;">
0.5067319
</td>
<td style="text-align:right;">
0.8904222
</td>
</tr>
<tr>
<td style="text-align:right;">
0.9975754
</td>
<td style="text-align:left;">
Spehar2016_expt2-Thr
</td>
<td style="text-align:right;">
50
</td>
<td style="text-align:right;">
9
</td>
<td style="text-align:right;">
3600
</td>
<td style="text-align:right;">
0.5580069
</td>
<td style="text-align:right;">
0.7192029
</td>
<td style="text-align:right;">
0.9401588
</td>
</tr>
<tr>
<td style="text-align:right;">
0.9967139
</td>
<td style="text-align:left;">
Luckett2018_icecream
</td>
<td style="text-align:right;">
87
</td>
<td style="text-align:right;">
5
</td>
<td style="text-align:right;">
435
</td>
<td style="text-align:right;">
0.5197877
</td>
<td style="text-align:right;">
0.4949369
</td>
<td style="text-align:right;">
0.5129689
</td>
</tr>
<tr>
<td style="text-align:right;">
0.9960327
</td>
<td style="text-align:left;">
Spehar2016_expt2-Plain
</td>
<td style="text-align:right;">
50
</td>
<td style="text-align:right;">
9
</td>
<td style="text-align:right;">
3600
</td>
<td style="text-align:right;">
0.5228413
</td>
<td style="text-align:right;">
0.4106837
</td>
<td style="text-align:right;">
0.8515141
</td>
</tr>
</tbody>
</table>

Those ones all seem to have a small number of representations - so
perhaps the
![R'](https://latex.codecogs.com/png.image?%5Cdpi%7B110%7D&space;%5Cbg_white&space;R%27 "R'")
measure is systematically underestimating reliability in those cases.
