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
44
</td>
<td style="text-align:left;">
42%
</td>
<td style="text-align:left;">
54%
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
21%
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
19%
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
4%
</td>
</tr>
<tr>
<td style="text-align:left;">
NA
</td>
<td style="text-align:right;">
24
</td>
<td style="text-align:left;">
23%
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

There are a few sessions with very low (\<0.5) mean split-halves
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
</tr>
</thead>
<tbody>
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
</tr>
</tbody>
</table>

# SSR vs EloChoice

    ## Warning: ggrepel: 1 unlabeled data points (too many overlaps). Consider
    ## increasing max.overlaps

![](figs-web/03-reliability-measures/ssr-vs-elo-1.png)<!-- -->

# EloChoice cs split-halves

    ## Warning: ggrepel: 30 unlabeled data points (too many overlaps). Consider
    ## increasing max.overlaps

![](figs-web/03-reliability-measures/splithalves-vs-elo-1.png)<!-- -->
