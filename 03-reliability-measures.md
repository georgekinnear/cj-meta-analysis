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
67
</td>
<td style="text-align:left;">
64%
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
36%
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
<th style="text-align:left;">
valid_percent
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">
FALSE
</td>
<td style="text-align:right;">
49
</td>
<td style="text-align:left;">
47%
</td>
<td style="text-align:left;">
57%
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
16%
</td>
<td style="text-align:left;">
20%
</td>
</tr>
<tr>
<td style="text-align:left;">
unclear
</td>
<td style="text-align:right;">
2
</td>
<td style="text-align:left;">
2%
</td>
<td style="text-align:left;">
2%
</td>
</tr>
<tr>
<td style="text-align:left;">
unknown
</td>
<td style="text-align:right;">
15
</td>
<td style="text-align:left;">
14%
</td>
<td style="text-align:left;">
17%
</td>
</tr>
<tr>
<td style="text-align:left;">
unsure
</td>
<td style="text-align:right;">
3
</td>
<td style="text-align:left;">
3%
</td>
<td style="text-align:left;">
3%
</td>
</tr>
<tr>
<td style="text-align:left;">
NA
</td>
<td style="text-align:right;">
19
</td>
<td style="text-align:left;">
18%
</td>
<td style="text-align:left;">

-   </td>
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

There are a few sessions with very low (\<0.7) mean split-halves
reliability:

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
<th style="text-align:right;">
N_CR
</th>
</tr>
</thead>
<tbody>
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
0.692
</td>
<td style="text-align:right;">
0.873
</td>
<td style="text-align:right;">
5.000
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
0.645
</td>
<td style="text-align:right;">
0.934
</td>
<td style="text-align:right;">
5.708
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
0.595
</td>
<td style="text-align:right;">
0.782
</td>
<td style="text-align:right;">
6.701
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
0.398
</td>
<td style="text-align:right;">
0.569
</td>
<td style="text-align:right;">
7.100
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
0.572
</td>
<td style="text-align:right;">
0.820
</td>
<td style="text-align:right;">
7.143
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
0.607
</td>
<td style="text-align:right;">
0.841
</td>
<td style="text-align:right;">
7.202
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
0.665
</td>
<td style="text-align:right;">
0.896
</td>
<td style="text-align:right;">
7.244
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
0.636
</td>
<td style="text-align:right;">
0.878
</td>
<td style="text-align:right;">
7.244
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
0.537
</td>
<td style="text-align:right;">
0.738
</td>
<td style="text-align:right;">
7.313
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
0.455
</td>
<td style="text-align:right;">
0.734
</td>
<td style="text-align:right;">
7.405
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
0.579
</td>
<td style="text-align:right;">
0.776
</td>
<td style="text-align:right;">
8.389
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
0.634
</td>
<td style="text-align:right;">
0.753
</td>
<td style="text-align:right;">
9.000
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
0.681
</td>
<td style="text-align:right;">
0.819
</td>
<td style="text-align:right;">
9.037
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
0.617
</td>
<td style="text-align:right;">
0.826
</td>
<td style="text-align:right;">
9.158
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
0.610
</td>
<td style="text-align:right;">
0.792
</td>
<td style="text-align:right;">
9.182
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
0.385
</td>
<td style="text-align:right;">
0.658
</td>
<td style="text-align:right;">
9.943
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
0.686
</td>
<td style="text-align:right;">
0.833
</td>
<td style="text-align:right;">
10.000
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
0.679
</td>
<td style="text-align:right;">
0.829
</td>
<td style="text-align:right;">
11.091
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
0.665
</td>
<td style="text-align:right;">
0.835
</td>
<td style="text-align:right;">
15.100
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
0.659
</td>
<td style="text-align:right;">
0.870
</td>
<td style="text-align:right;">
15.107
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
0.541
</td>
<td style="text-align:right;">
0.803
</td>
<td style="text-align:right;">
15.135
</td>
</tr>
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
0.251
</td>
<td style="text-align:right;">
0.679
</td>
<td style="text-align:right;">
16.550
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
0.591
</td>
<td style="text-align:right;">
0.847
</td>
<td style="text-align:right;">
18.100
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
0.583
</td>
<td style="text-align:right;">
0.770
</td>
<td style="text-align:right;">
21.100
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
0.522
</td>
<td style="text-align:right;">
0.804
</td>
<td style="text-align:right;">
21.500
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
0.591
</td>
<td style="text-align:right;">
0.774
</td>
<td style="text-align:right;">
22.000
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
0.657
</td>
<td style="text-align:right;">
0.830
</td>
<td style="text-align:right;">
25.000
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
0.438
</td>
<td style="text-align:right;">
0.724
</td>
<td style="text-align:right;">
29.200
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
0.675
</td>
<td style="text-align:right;">
0.845
</td>
<td style="text-align:right;">
40.733
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
0.653
</td>
<td style="text-align:right;">
0.667
</td>
<td style="text-align:right;">
76.000
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
0.495
</td>
<td style="text-align:right;">
0.513
</td>
<td style="text-align:right;">
87.000
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
0.507
</td>
<td style="text-align:right;">
0.890
</td>
<td style="text-align:right;">
400.000
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
0.694
</td>
<td style="text-align:right;">
0.942
</td>
<td style="text-align:right;">
400.000
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
0.411
</td>
<td style="text-align:right;">
0.852
</td>
<td style="text-align:right;">
400.000
</td>
</tr>
</tbody>
</table>

> *TODO* – plot it?

# SSR vs EloChoice

    ## Warning: ggrepel: 1 unlabeled data points (too many overlaps). Consider
    ## increasing max.overlaps

![](figs-web/03-reliability-measures/ssr-vs-elo-1.png)<!-- -->

# EloChoice cs split-halves

    ## Warning: ggrepel: 30 unlabeled data points (too many overlaps). Consider
    ## increasing max.overlaps

![](figs-web/03-reliability-measures/splithalves-vs-elo-1.png)<!-- -->
