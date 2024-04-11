CJ meta-analysis: RQ2
================
George Kinnear
2023-08-15

# About the sample

    ## # A tibble: 1 × 1
    ##   n_datatsets
    ##         <int>
    ## 1         101

## SSR correction

The `ssr` column stores the `mle.rel` value from `sirt::btm` which is
incorrect; here, we replace the `ssr` values with the correct ones,
computed from `sepG`:

# Observed distribution of reliability measures

For these plots:

- Scale Separation Reliability (SSR) is the value of SSR computed from
  the item scores and standard errors using all of the available
  judgement data,
- Split-halves reliability comes from computing the Pearson correlation
  coefficient of the scores produced by fitting the Bradley-Terry model
  separately on two randomly-selected partitions of the judges, and
  taking the median of 100 such random splits,
- Correct comparisons is the proportion of individual decisions that
  agree with the final rank order of the items.

![](figs-web/04-analysis-RQ2/unnamed-chunk-3-1.png)<!-- -->

## Relationship between observed measures

![](figs-web/04-analysis-RQ2/scatter-1.png)<!-- -->

# Effect of N_CR on reliability measures

Verhavert et al. (2019) defined N_CR as 2 \* N_C / N_R, with the
multiplier of 2 reflecting the fact that each judgement contributes a
comparison for each of the items being compared.

With N_CR = 2 \* N_C / N_R, we consider various thresholds that have
been suggested in the literature:

- *N_CR \>= 10*. “assuming 10 decisions per script (or 5 pairs) for a
  good level of reliability.” (Wheadon et al., 2020, p. 59)
- *N_CR \>= 20*. “A general rule of thumb is to have at least 10 times
  the number of judgements to the number of scripts.” (Bisson et al.,
  2016, p. 154)
- *N_CR \>= 37*. “between 10 and 14 comparisons per representation are
  needed to reach a reliability of .70. To reach a reliability of .90,
  26 to 37 comparisons per representation are needed.” (Verhavert et
  al., 2019, p. 557)

<table class="table table-striped" style="width: auto !important; margin-left: auto; margin-right: auto;">
<thead>
<tr>
<th style="text-align:left;">
ncr
</th>
<th style="text-align:right;">
num_studies
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">
all
</td>
<td style="text-align:right;">
101
</td>
</tr>
<tr>
<td style="text-align:left;">
10+
</td>
<td style="text-align:right;">
100
</td>
</tr>
<tr>
<td style="text-align:left;">
20+
</td>
<td style="text-align:right;">
64
</td>
</tr>
<tr>
<td style="text-align:left;">
37+
</td>
<td style="text-align:right;">
44
</td>
</tr>
</tbody>
</table>

Since there is only one study that is just below the 10+ threshold, we
will just proceed with the all/20+/37+ groups.

![](figs-web/04-analysis-RQ2/unnamed-chunk-7-1.png)<!-- -->

<table class="table table-striped" style="width: auto !important; margin-left: auto; margin-right: auto;">
<thead>
<tr>
<th style="text-align:left;">
measure
</th>
<th style="text-align:left;">
ncr
</th>
<th style="text-align:right;">
min
</th>
<th style="text-align:right;">
median
</th>
<th style="text-align:right;">
max
</th>
<th style="text-align:right;">
prop_above_0.7
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">
Scale Separation Reliability
</td>
<td style="text-align:left;">
all
</td>
<td style="text-align:right;">
0.672
</td>
<td style="text-align:right;">
0.908
</td>
<td style="text-align:right;">
0.994
</td>
<td style="text-align:right;">
0.980
</td>
</tr>
<tr>
<td style="text-align:left;">
Split-halves reliability
</td>
<td style="text-align:left;">
all
</td>
<td style="text-align:right;">
0.259
</td>
<td style="text-align:right;">
0.785
</td>
<td style="text-align:right;">
0.985
</td>
<td style="text-align:right;">
0.673
</td>
</tr>
<tr>
<td style="text-align:left;">
Correct comparisons
</td>
<td style="text-align:left;">
all
</td>
<td style="text-align:right;">
0.561
</td>
<td style="text-align:right;">
0.775
</td>
<td style="text-align:right;">
0.956
</td>
<td style="text-align:right;">
0.752
</td>
</tr>
<tr>
<td style="text-align:left;">
Scale Separation Reliability
</td>
<td style="text-align:left;">
20+
</td>
<td style="text-align:right;">
0.672
</td>
<td style="text-align:right;">
0.908
</td>
<td style="text-align:right;">
0.994
</td>
<td style="text-align:right;">
0.984
</td>
</tr>
<tr>
<td style="text-align:left;">
Split-halves reliability
</td>
<td style="text-align:left;">
20+
</td>
<td style="text-align:right;">
0.259
</td>
<td style="text-align:right;">
0.797
</td>
<td style="text-align:right;">
0.985
</td>
<td style="text-align:right;">
0.734
</td>
</tr>
<tr>
<td style="text-align:left;">
Correct comparisons
</td>
<td style="text-align:left;">
20+
</td>
<td style="text-align:right;">
0.561
</td>
<td style="text-align:right;">
0.750
</td>
<td style="text-align:right;">
0.943
</td>
<td style="text-align:right;">
0.625
</td>
</tr>
<tr>
<td style="text-align:left;">
Scale Separation Reliability
</td>
<td style="text-align:left;">
37+
</td>
<td style="text-align:right;">
0.672
</td>
<td style="text-align:right;">
0.932
</td>
<td style="text-align:right;">
0.994
</td>
<td style="text-align:right;">
0.977
</td>
</tr>
<tr>
<td style="text-align:left;">
Split-halves reliability
</td>
<td style="text-align:left;">
37+
</td>
<td style="text-align:right;">
0.456
</td>
<td style="text-align:right;">
0.860
</td>
<td style="text-align:right;">
0.985
</td>
<td style="text-align:right;">
0.773
</td>
</tr>
<tr>
<td style="text-align:left;">
Correct comparisons
</td>
<td style="text-align:left;">
37+
</td>
<td style="text-align:right;">
0.561
</td>
<td style="text-align:right;">
0.701
</td>
<td style="text-align:right;">
0.943
</td>
<td style="text-align:right;">
0.500
</td>
</tr>
</tbody>
</table>

The trend in “correct comparisons” seems to be down to the adaptive
studies being more likely to have high values on that measure while
having low N_CR:

![](figs-web/04-analysis-RQ2/unnamed-chunk-9-1.png)<!-- -->

It may also be ascribed to the prevalence of layperson judges in studies
with large N_CR:

![](figs-web/04-analysis-RQ2/unnamed-chunk-10-1.png)<!-- -->

## SSR and split-halves only

Focusing only on the SSR and split-halves measures:

![](figs-web/04-analysis-RQ2/unnamed-chunk-11-1.png)<!-- -->

![](figs-web/04-analysis-RQ2/unnamed-chunk-12-1.png)<!-- -->

# Relationships between reliability measures

## Using SSR_ALL

For each study, we computed the SSR and SHR from the judgement data.
Here, each point is one study and we see that the two values are closely
related:

![](figs-web/04-analysis-RQ2/unnamed-chunk-13-1.png)<!-- -->

    ## 
    ## Call:
    ## lm(formula = median_split_corr ~ ssr, data = meta_analysis_data)
    ## 
    ## Residuals:
    ##      Min       1Q   Median       3Q      Max 
    ## -0.23648 -0.04462  0.00308  0.04420  0.36646 
    ## 
    ## Coefficients:
    ##             Estimate Std. Error t value Pr(>|t|)    
    ## (Intercept)  -0.8887     0.1060  -8.385 3.56e-13 ***
    ## ssr           1.8280     0.1172  15.595  < 2e-16 ***
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## Residual standard error: 0.08016 on 99 degrees of freedom
    ## Multiple R-squared:  0.7107, Adjusted R-squared:  0.7078 
    ## F-statistic: 243.2 on 1 and 99 DF,  p-value: < 2.2e-16

    ## 
    ##  Pearson's product-moment correlation
    ## 
    ## data:  median_split_corr and ssr
    ## t = 15.595, df = 99, p-value < 2.2e-16
    ## alternative hypothesis: true correlation is not equal to 0
    ## 95 percent confidence interval:
    ##  0.7753259 0.8915675
    ## sample estimates:
    ##       cor 
    ## 0.8430227

    ## 
    ##  Spearman's rank correlation rho
    ## 
    ## data:  median_split_corr and ssr
    ## S = 24378, p-value < 2.2e-16
    ## alternative hypothesis: true rho is not equal to 0
    ## sample estimates:
    ##       rho 
    ## 0.8580198

## Introducing SSR_HALF

The split-halves reliability comes from the median of 100 random
iterations of the split-halves correlation coefficient.

For each iteration, the judges are split randomly into two groups, and
Bradley-Terry is run for each half of the data separately.

Thus, we can consider the SSR of either of those halves.

When running all the split-half computations, we recorded for each
split: the value of the correlation (`split_corr`) and the value of the
SSR of one of the halves (`ssr_x`):

    ## # A tibble: 6 × 4
    ##   judging_session iteration split_corr ssr_x
    ##   <chr>               <dbl>      <dbl> <dbl>
    ## 1 AlMaimani2017           1      0.978 0.906
    ## 2 AlMaimani2017           2      0.956 0.916
    ## 3 AlMaimani2017           3      0.997 0.892
    ## 4 AlMaimani2017           4      0.996 0.911
    ## 5 AlMaimani2017           5      0.956 0.916
    ## 6 AlMaimani2017           6      0.996 0.890

Now the question is: how do `ssr_x` and `split_corr` relate? (That would
give some information towards the situation where you have an SSR value
for some judging data, and would like to know the likely correlation you
would get between the scores generated from that data, and the scores
from another similar group of judges.)

From each judging session, we have 100 data points to address that
question, but they are not really independent since they are built on
the same judgement data. So we summarise each judging session by the
*median* of `ssr_x` and `split_corr` across the 100 different splits. We
could have used the *mean* but it doesn’t actually make much difference
as an estimate of the expected value; both averages are very similar in
practice, as shown in this plot of the raw values and their averages
(mean in red, median in green) in the first 16 sets of judging data:

![](figs-web/04-analysis-RQ2/unnamed-chunk-15-1.png)<!-- -->

So using the medians, we have the following picture:

![](figs-web/04-analysis-RQ2/unnamed-chunk-16-1.png)<!-- -->
<details>
<summary>
Extra plot
</summary>

    ## Warning: package 'patchwork' was built under R version 4.2.3

![](figs-web/04-analysis-RQ2/unnamed-chunk-17-1.png)<!-- -->
</details>

There is a strong linear relationship here:

    ## 
    ## Call:
    ## lm(formula = median_split_corr ~ median_ssr_x, data = meta_analysis_data)
    ## 
    ## Residuals:
    ##      Min       1Q   Median       3Q      Max 
    ## -0.37257 -0.02588  0.00454  0.03109  0.39919 
    ## 
    ## Coefficients:
    ##              Estimate Std. Error t value Pr(>|t|)    
    ## (Intercept)  -0.38572    0.08655  -4.457  2.2e-05 ***
    ## median_ssr_x  1.38217    0.10392  13.301  < 2e-16 ***
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## Residual standard error: 0.08927 on 99 degrees of freedom
    ## Multiple R-squared:  0.6412, Adjusted R-squared:  0.6376 
    ## F-statistic: 176.9 on 1 and 99 DF,  p-value: < 2.2e-16

We can add a 95% prediction interval from the linear regression:

    ## Warning: Removed 13 rows containing missing values (`geom_line()`).

![](figs-web/04-analysis-RQ2/unnamed-chunk-19-1.png)<!-- -->

So for instance, with an SSR of 0.8 we might then read off the blue
prediction interval and expect to get a correlation of anywhere between
0.55 and 0.9 with scores generated by a similar group of judges.

## Comparing SSR and SHR thresholds

If we use a particular SSR threshold in our study, what sort of
correlation might we expect with the scores we’d get if we gathered the
same number of judgements again?

The above analysis does a sort of simulation of this situation, by
splitting the data from each of the studies in the meta-analysis into
two halves (which you could think of as the original and replication),
and computing:

- SSR_HALF - the SSR of the “original” half dataset,
- SHR - the correlation between the scores from the “original” and
  “replication” datasets

(where in fact each of these is the median over 100 iterations of
splitting the data into random halves).

We can then look at what a given SSR threshold should imply for the SHR.

Here we look at how likely a given SSR threshold is to produce an SHR of
.7 or higher:

<table class="table table-striped" style="width: auto !important; margin-left: auto; margin-right: auto;">
<thead>
<tr>
<th style="text-align:right;">
ssr_threshold
</th>
<th style="text-align:right;">
n
</th>
<th style="text-align:right;">
n_with_shr_above_pt7
</th>
<th style="text-align:left;">
pct
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:right;">
0.70
</td>
<td style="text-align:right;">
96
</td>
<td style="text-align:right;">
67
</td>
<td style="text-align:left;">
70%
</td>
</tr>
<tr>
<td style="text-align:right;">
0.75
</td>
<td style="text-align:right;">
84
</td>
<td style="text-align:right;">
67
</td>
<td style="text-align:left;">
80%
</td>
</tr>
<tr>
<td style="text-align:right;">
0.80
</td>
<td style="text-align:right;">
63
</td>
<td style="text-align:right;">
57
</td>
<td style="text-align:left;">
90%
</td>
</tr>
<tr>
<td style="text-align:right;">
0.85
</td>
<td style="text-align:right;">
39
</td>
<td style="text-align:right;">
38
</td>
<td style="text-align:left;">
97%
</td>
</tr>
<tr>
<td style="text-align:right;">
0.90
</td>
<td style="text-align:right;">
25
</td>
<td style="text-align:right;">
25
</td>
<td style="text-align:left;">
100%
</td>
</tr>
</tbody>
</table>

Here we look at other SHR thresholds too:

<table class="table table-striped" style="width: auto !important; margin-left: auto; margin-right: auto;">
<thead>
<tr>
<th style="empty-cells: hide;border-bottom:hidden;" colspan="2">
</th>
<th style="border-bottom:hidden;padding-bottom:0; padding-left:3px;padding-right:3px;text-align: center; " colspan="3">

<div style="border-bottom: 1px solid #ddd; padding-bottom: 5px; ">

SHR Threshold

</div>

</th>
</tr>
<tr>
<th style="text-align:right;">
SSR Threshold
</th>
<th style="text-align:right;">
Number of studies
</th>
<th style="text-align:left;">
.7
</th>
<th style="text-align:left;">
.8
</th>
<th style="text-align:left;">
.9
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:right;">
0.70
</td>
<td style="text-align:right;">
96
</td>
<td style="text-align:left;">
67 (70%)
</td>
<td style="text-align:left;">
43 (45%)
</td>
<td style="text-align:left;">
18 (19%)
</td>
</tr>
<tr>
<td style="text-align:right;">
0.75
</td>
<td style="text-align:right;">
84
</td>
<td style="text-align:left;">
67 (80%)
</td>
<td style="text-align:left;">
43 (51%)
</td>
<td style="text-align:left;">
18 (21%)
</td>
</tr>
<tr>
<td style="text-align:right;">
0.80
</td>
<td style="text-align:right;">
63
</td>
<td style="text-align:left;">
57 (90%)
</td>
<td style="text-align:left;">
40 (63%)
</td>
<td style="text-align:left;">
18 (29%)
</td>
</tr>
<tr>
<td style="text-align:right;">
0.85
</td>
<td style="text-align:right;">
39
</td>
<td style="text-align:left;">
38 (97%)
</td>
<td style="text-align:left;">
36 (92%)
</td>
<td style="text-align:left;">
18 (46%)
</td>
</tr>
<tr>
<td style="text-align:right;">
0.90
</td>
<td style="text-align:right;">
25
</td>
<td style="text-align:left;">
25 (100%)
</td>
<td style="text-align:left;">
25 (100%)
</td>
<td style="text-align:left;">
16 (64%)
</td>
</tr>
</tbody>
</table>

## Considering the effect of N_CR

We split the data into groups, according to which ones meet various
thresholds that have been recommended in the past for N_CR, the number
of comparisons per representation.

The trend seems to be that with increasing N_CR, the relationship
between the two measures gets closer to the y=x line. (i.e., with
sufficient judgements that split-halves makes sense, the SSR is
split-halves reliability)

![](figs-web/04-analysis-RQ2/unnamed-chunk-23-1.png)<!-- -->

![](figs-web/04-analysis-RQ2/unnamed-chunk-24-1.png)<!-- -->

However, looking at the correlations somewhat undermines that
interpretation, as the correlation between the two variables decreases
as the threshold on N_CR is increased:

<table class="table table-striped" style="width: auto !important; margin-left: auto; margin-right: auto;">
<thead>
<tr>
<th style="text-align:right;">
ncr_threshold
</th>
<th style="text-align:right;">
num_studies
</th>
<th style="text-align:right;">
correlation
</th>
<th style="text-align:right;">
p_value
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
101
</td>
<td style="text-align:right;">
0.841
</td>
<td style="text-align:right;">
0
</td>
</tr>
<tr>
<td style="text-align:right;">
20
</td>
<td style="text-align:right;">
64
</td>
<td style="text-align:right;">
0.835
</td>
<td style="text-align:right;">
0
</td>
</tr>
<tr>
<td style="text-align:right;">
37
</td>
<td style="text-align:right;">
44
</td>
<td style="text-align:right;">
0.837
</td>
<td style="text-align:right;">
0
</td>
</tr>
</tbody>
</table>

(This seems to be driven by a couple of low outliers in the 37+ group.)

    ## # A tibble: 2 × 5
    ##   judging_session        median_ssr_x median_split_corr  N_CR ncr  
    ##   <chr>                         <dbl>             <dbl> <dbl> <chr>
    ## 1 Spehar2016_expt2-Edges        0.857             0.596   800 37+  
    ## 2 Spehar2016_expt2-Plain        0.821             0.505   800 37+

Likewise, the details for the linear model in each case show that the
variance explained decreases with higher thresholds, i.e. `median_ssr_x`
is less predictive of `median_split_corr`:

    ## 
    ## Call:
    ## lm(formula = median_split_corr ~ median_ssr_x, data = reliability_corr_plot_data)
    ## 
    ## Residuals:
    ##      Min       1Q   Median       3Q      Max 
    ## -0.37257 -0.02588  0.00454  0.03109  0.39919 
    ## 
    ## Coefficients:
    ##              Estimate Std. Error t value Pr(>|t|)    
    ## (Intercept)  -0.38572    0.08655  -4.457  2.2e-05 ***
    ## median_ssr_x  1.38217    0.10392  13.301  < 2e-16 ***
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## Residual standard error: 0.08927 on 99 degrees of freedom
    ## Multiple R-squared:  0.6412, Adjusted R-squared:  0.6376 
    ## F-statistic: 176.9 on 1 and 99 DF,  p-value: < 2.2e-16

    ## 
    ## Call:
    ## lm(formula = median_split_corr ~ median_ssr_x, data = reliability_corr_plot_data %>% 
    ##     filter(N_CR >= 20))
    ## 
    ## Residuals:
    ##      Min       1Q   Median       3Q      Max 
    ## -0.38405 -0.02772  0.01544  0.03899  0.38033 
    ## 
    ## Coefficients:
    ##              Estimate Std. Error t value Pr(>|t|)    
    ## (Intercept)   -0.3018     0.1224  -2.465   0.0165 *  
    ## median_ssr_x   1.2838     0.1440   8.913 1.05e-12 ***
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## Residual standard error: 0.1013 on 62 degrees of freedom
    ## Multiple R-squared:  0.5617, Adjusted R-squared:  0.5546 
    ## F-statistic: 79.44 on 1 and 62 DF,  p-value: 1.048e-12

    ## 
    ## Call:
    ## lm(formula = median_split_corr ~ median_ssr_x, data = reliability_corr_plot_data %>% 
    ##     filter(N_CR >= 37))
    ## 
    ## Residuals:
    ##      Min       1Q   Median       3Q      Max 
    ## -0.26250 -0.05123  0.02087  0.03773  0.34166 
    ## 
    ## Coefficients:
    ##              Estimate Std. Error t value Pr(>|t|)    
    ## (Intercept)   -0.1667     0.1389  -1.200    0.237    
    ## median_ssr_x   1.1378     0.1609   7.071 1.15e-08 ***
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## Residual standard error: 0.1012 on 42 degrees of freedom
    ## Multiple R-squared:  0.5435, Adjusted R-squared:  0.5326 
    ## F-statistic:    50 on 1 and 42 DF,  p-value: 1.151e-08

# How do study characteristics relate to reliability?

Look at how representations, assessors, comparisons and their
derivatives relate to SSR and SHR.

This table shows the Pearson correlation of each characteristic with SSR
and with SHR:

<table class="table table-striped" style="width: auto !important; margin-left: auto; margin-right: auto;">
<thead>
<tr>
<th style="text-align:left;">
var1
</th>
<th style="text-align:left;">
N_A
</th>
<th style="text-align:left;">
N_R
</th>
<th style="text-align:left;">
N_C
</th>
<th style="text-align:left;">
N_CA
</th>
<th style="text-align:left;">
N_CR
</th>
<th style="text-align:left;">
N_RA
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">
SHR
</td>
<td style="text-align:left;">
.23\*
</td>
<td style="text-align:left;">
.11
</td>
<td style="text-align:left;">
.22\*
</td>
<td style="text-align:left;">
.01
</td>
<td style="text-align:left;">
.26\*\*
</td>
<td style="text-align:left;">
-.01
</td>
</tr>
<tr>
<td style="text-align:left;">
SSR
</td>
<td style="text-align:left;">
.20\*
</td>
<td style="text-align:left;">
.19
</td>
<td style="text-align:left;">
.21\*
</td>
<td style="text-align:left;">
.09
</td>
<td style="text-align:left;">
.25\*
</td>
<td style="text-align:left;">
.13
</td>
</tr>
</tbody>
</table>
<details>
<summary>
LaTeX table
</summary>

    ## \begin{table}
    ## \centering
    ## \begin{tabular}{lllllll}
    ## \toprule
    ## var1 & N\_A & N\_R & N\_C & N\_CA & N\_CR & N\_RA\\
    ## \midrule
    ## SHR & .23* & .11 & .22* & .01 & .26** & -.01\\
    ## SSR & .20* & .19 & .21* & .09 & .25* & .13\\
    ## \bottomrule
    ## \end{tabular}
    ## \end{table}

</details>

### Plotting

    ## Warning: package 'GGally' was built under R version 4.2.3

    ## Registered S3 method overwritten by 'GGally':
    ##   method from   
    ##   +.gg   ggplot2

![](figs-web/04-analysis-RQ2/unnamed-chunk-32-1.png)<!-- -->

## Split-halves reliability

Sig correlations with SHR are observed_N_A, observed_N_C, N_CR. Check
scatter plots for SHR.

![](figs-web/04-analysis-RQ2/unnamed-chunk-33-1.png)<!-- -->

Forced linear regression SHR:

    ## median_split_corr ~ observed_N_A + observed_N_C + N_CR

    ## 
    ## Call:
    ## lm(formula = formula_shr, data = reliability_characteristics)
    ## 
    ## Residuals:
    ##      Min       1Q   Median       3Q      Max 
    ## -0.48465 -0.06253  0.00572  0.11828  0.23211 
    ## 
    ## Coefficients:
    ##               Estimate Std. Error t value Pr(>|t|)    
    ## (Intercept)  7.407e-01  1.524e-02  48.614   <2e-16 ***
    ## observed_N_A 9.699e-06  1.490e-04   0.065   0.9482    
    ## observed_N_C 8.113e-07  2.215e-06   0.366   0.7150    
    ## N_CR         7.566e-05  3.292e-05   2.298   0.0237 *  
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## Residual standard error: 0.1424 on 97 degrees of freedom
    ## Multiple R-squared:  0.1051, Adjusted R-squared:  0.07746 
    ## F-statistic: 3.799 on 3 and 97 DF,  p-value: 0.01268

    ## 
    ## Call:
    ## lm(formula = formula_shr, data = reliability_characteristics)
    ## 
    ## Standardized Coefficients::
    ##  (Intercept) observed_N_A observed_N_C         N_CR 
    ##           NA   0.02893218   0.16055744   0.24023892

## SSR

For SSR we have significant correlation with observed_N_A, observed_N_C,
N_CR.

![](figs-web/04-analysis-RQ2/unnamed-chunk-36-1.png)<!-- -->

![](figs-web/04-analysis-RQ2/unnamed-chunk-37-1.png)<!-- -->

SSR forced linear regression:

    ## ssr ~ observed_N_A + observed_N_C + N_CR

    ## 
    ## Call:
    ## lm(formula = formula_ssr, data = reliability_characteristics)
    ## 
    ## Residuals:
    ##       Min        1Q    Median        3Q       Max 
    ## -0.222871 -0.036059  0.004854  0.054963  0.090531 
    ## 
    ## Coefficients:
    ##                Estimate Std. Error t value Pr(>|t|)    
    ## (Intercept)   8.933e-01  7.048e-03 126.755   <2e-16 ***
    ## observed_N_A -5.810e-05  6.893e-05  -0.843   0.4014    
    ## observed_N_C  1.266e-06  1.025e-06   1.236   0.2195    
    ## N_CR          3.753e-05  1.523e-05   2.465   0.0155 *  
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## Residual standard error: 0.06588 on 97 degrees of freedom
    ## Multiple R-squared:  0.09977,    Adjusted R-squared:  0.07193 
    ## F-statistic: 3.583 on 3 and 97 DF,  p-value: 0.01658

    ## 
    ## Call:
    ## lm(formula = formula_ssr, data = reliability_characteristics)
    ## 
    ## Standardized Coefficients::
    ##  (Intercept) observed_N_A observed_N_C         N_CR 
    ##           NA   -0.3758196    0.5434517    0.2584404

<table class="table table-striped" style="width: auto !important; margin-left: auto; margin-right: auto;">
<thead>
<tr>
<th style="empty-cells: hide;border-bottom:hidden;" colspan="1">
</th>
<th style="border-bottom:hidden;padding-bottom:0; padding-left:3px;padding-right:3px;text-align: center; " colspan="2">

<div style="border-bottom: 1px solid #ddd; padding-bottom: 5px; ">

SHR

</div>

</th>
<th style="border-bottom:hidden;padding-bottom:0; padding-left:3px;padding-right:3px;text-align: center; " colspan="2">

<div style="border-bottom: 1px solid #ddd; padding-bottom: 5px; ">

SSR

</div>

</th>
</tr>
<tr>
<th style="text-align:left;">
Characteristic
</th>
<th style="text-align:right;">
beta
</th>
<th style="text-align:left;">
p
</th>
<th style="text-align:right;">
beta
</th>
<th style="text-align:left;">
p
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">
(Intercept)
</td>
<td style="text-align:right;">
NA
</td>
<td style="text-align:left;">
\<0.001\*\*\*
</td>
<td style="text-align:right;">
NA
</td>
<td style="text-align:left;">
\<0.001\*\*\*
</td>
</tr>
<tr>
<td style="text-align:left;">
observed_N_A
</td>
<td style="text-align:right;">
0.03
</td>
<td style="text-align:left;">
.948
</td>
<td style="text-align:right;">
-0.38
</td>
<td style="text-align:left;">
.401
</td>
</tr>
<tr>
<td style="text-align:left;">
observed_N_C
</td>
<td style="text-align:right;">
0.16
</td>
<td style="text-align:left;">
.715
</td>
<td style="text-align:right;">
0.54
</td>
<td style="text-align:left;">
.219
</td>
</tr>
<tr>
<td style="text-align:left;">
N_CR
</td>
<td style="text-align:right;">
0.24
</td>
<td style="text-align:left;">
.024\*
</td>
<td style="text-align:right;">
0.26
</td>
<td style="text-align:left;">
.015\*
</td>
</tr>
</tbody>
</table>
<details>
<summary>
LaTeX table
</summary>

    ## \begin{table}
    ## \centering
    ## \begin{tabular}{lrlrl}
    ## \toprule
    ## \multicolumn{1}{c}{ } & \multicolumn{2}{c}{SHR} & \multicolumn{2}{c}{SSR} \\
    ## \cmidrule(l{3pt}r{3pt}){2-3} \cmidrule(l{3pt}r{3pt}){4-5}
    ## Characteristic & beta & p & beta & p\\
    ## \midrule
    ## (Intercept) & NA & <0.001*** & NA & <0.001***\\
    ## observed\_N\_A & 0.03 & .948 & -0.38 & .401\\
    ## observed\_N\_C & 0.16 & .715 & 0.54 & .219\\
    ## N\_CR & 0.24 & .024* & 0.26 & .015*\\
    ## \bottomrule
    ## \end{tabular}
    ## \end{table}

</details>

## Regression with interactions

As observed earlier, the three characteristics are inter-related, and
correlated predictors pose a problem for regression models. One way of
checking for correlated predictors is using the variance inflation
factor (VIF), where values above 10 are typically taken as an indicator
of high multicollinearity:

    ## observed_N_A observed_N_C observed_N_R 
    ##    32.553490    37.725036     2.319116

Regardless of multicollinearity, we can proceed with a regression model
involving all three characteristics, as well as interaction terms
between them:

    ## 
    ## Call:
    ## lm(formula = ssr ~ observed_N_A * observed_N_C * observed_N_R, 
    ##     data = reliability_characteristics)
    ## 
    ## Residuals:
    ##       Min        1Q    Median        3Q       Max 
    ## -0.198106 -0.031430  0.008437  0.041221  0.088498 
    ## 
    ## Coefficients:
    ##                                          Estimate Std. Error t value Pr(>|t|)
    ## (Intercept)                             8.699e-01  1.130e-02  76.987  < 2e-16
    ## observed_N_A                           -7.975e-05  1.945e-04  -0.410 0.682667
    ## observed_N_C                            1.825e-05  6.340e-06   2.879 0.004947
    ## observed_N_R                            7.843e-05  3.716e-05   2.111 0.037493
    ## observed_N_A:observed_N_C              -1.046e-08  2.168e-08  -0.483 0.630436
    ## observed_N_A:observed_N_R              -7.413e-07  4.673e-07  -1.586 0.116103
    ## observed_N_C:observed_N_R              -1.006e-08  2.873e-09  -3.502 0.000711
    ## observed_N_A:observed_N_C:observed_N_R  1.116e-11  2.001e-11   0.558 0.578238
    ##                                           
    ## (Intercept)                            ***
    ## observed_N_A                              
    ## observed_N_C                           ** 
    ## observed_N_R                           *  
    ## observed_N_A:observed_N_C                 
    ## observed_N_A:observed_N_R                 
    ## observed_N_C:observed_N_R              ***
    ## observed_N_A:observed_N_C:observed_N_R    
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## Residual standard error: 0.06211 on 93 degrees of freedom
    ## Multiple R-squared:  0.2327, Adjusted R-squared:  0.175 
    ## F-statistic: 4.029 on 7 and 93 DF,  p-value: 0.0006776

It is interesting here to see the interaction between $N_C$ and $N_R$
appearing significant in the model.

Focusing on N_CR, here is a model with just $N_C$ and $N_R$ (and their
interaction):

    ## 
    ## Call:
    ## lm(formula = ssr ~ observed_N_C * observed_N_R, data = reliability_characteristics)
    ## 
    ## Residuals:
    ##       Min        1Q    Median        3Q       Max 
    ## -0.205468 -0.039235  0.007434  0.047747  0.085765 
    ## 
    ## Coefficients:
    ##                             Estimate Std. Error t value Pr(>|t|)    
    ## (Intercept)                8.736e-01  8.585e-03 101.755  < 2e-16 ***
    ## observed_N_C               8.657e-06  1.964e-06   4.408 2.70e-05 ***
    ## observed_N_R               1.163e-04  2.981e-05   3.903 0.000176 ***
    ## observed_N_C:observed_N_R -7.822e-09  1.837e-09  -4.259 4.76e-05 ***
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## Residual standard error: 0.06201 on 97 degrees of freedom
    ## Multiple R-squared:  0.2024, Adjusted R-squared:  0.1778 
    ## F-statistic: 8.206 on 3 and 97 DF,  p-value: 6.371e-05

    ## 
    ## Call:
    ## lm(formula = ssr ~ observed_N_C * observed_N_R, data = reliability_characteristics)
    ## 
    ## Standardized Coefficients::
    ##               (Intercept)              observed_N_C              observed_N_R 
    ##                        NA                 3.7148476                 0.6043463 
    ## observed_N_C:observed_N_R 
    ##                -3.8427763

Another approach would be to consider log-transformed versions of the
three characteristics:

    ## 
    ## Call:
    ## lm(formula = ssr ~ log_N_A * log_N_C * log_N_R, data = .)
    ## 
    ## Residuals:
    ##       Min        1Q    Median        3Q       Max 
    ## -0.167908 -0.035564  0.002824  0.047125  0.105615 
    ## 
    ## Coefficients:
    ##                          Estimate Std. Error t value Pr(>|t|)    
    ## (Intercept)              0.969341   0.235720   4.112 8.45e-05 ***
    ## log_N_A                 -0.302560   0.145163  -2.084   0.0399 *  
    ## log_N_C                  0.030431   0.084047   0.362   0.7181    
    ## log_N_R                 -0.101004   0.122462  -0.825   0.4116    
    ## log_N_A:log_N_C          0.066723   0.043898   1.520   0.1319    
    ## log_N_A:log_N_R          0.125360   0.072570   1.727   0.0874 .  
    ## log_N_C:log_N_R          0.009525   0.034931   0.273   0.7857    
    ## log_N_A:log_N_C:log_N_R -0.026630   0.017938  -1.485   0.1410    
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## Residual standard error: 0.06031 on 93 degrees of freedom
    ## Multiple R-squared:  0.2766, Adjusted R-squared:  0.2221 
    ## F-statistic:  5.08 on 7 and 93 DF,  p-value: 6.507e-05

## What about the suggested thesholds of N_CR\>=20 and NC_R\>=37?

Let’s compare SSR and SHR for these thresholds

![](figs-web/04-analysis-RQ2/unnamed-chunk-47-1.png)<!-- -->

For the case of SSR

    ## # A tibble: 3 × 5
    ##   ncr_level count median   min   max
    ##   <chr>     <int>  <dbl> <dbl> <dbl>
    ## 1 0. low       37  0.911 0.699 0.983
    ## 2 1. medium    20  0.885 0.757 0.982
    ## 3 2. high      44  0.932 0.672 0.994

    ## # A tibble: 1 × 6
    ##   .y.       n statistic    df     p method        
    ## * <chr> <int>     <dbl> <int> <dbl> <chr>         
    ## 1 ssr     101      3.51     2 0.173 Kruskal-Wallis

    ## # A tibble: 3 × 9
    ##   .y.   group1    group2       n1    n2 statistic      p p.adj p.adj.signif
    ## * <chr> <chr>     <chr>     <int> <int>     <dbl>  <dbl> <dbl> <chr>       
    ## 1 ssr   0. low    1. medium    37    20    -0.898 0.369  0.554 ns          
    ## 2 ssr   0. low    2. high      37    44     1.09  0.277  0.554 ns          
    ## 3 ssr   1. medium 2. high      20    44     1.82  0.0683 0.205 ns

For the case of SHR

    ## # A tibble: 3 × 5
    ##   ncr_level count median   min   max
    ##   <chr>     <int>  <dbl> <dbl> <dbl>
    ## 1 0. low       37  0.732 0.387 0.906
    ## 2 1. medium    20  0.740 0.259 0.911
    ## 3 2. high      44  0.860 0.456 0.985

    ## # A tibble: 1 × 6
    ##   .y.                   n statistic    df       p method        
    ## * <chr>             <int>     <dbl> <int>   <dbl> <chr>         
    ## 1 median_split_corr   101      11.0     2 0.00402 Kruskal-Wallis

    ## # A tibble: 3 × 9
    ##   .y.           group1 group2    n1    n2 statistic       p   p.adj p.adj.signif
    ## * <chr>         <chr>  <chr>  <int> <int>     <dbl>   <dbl>   <dbl> <chr>       
    ## 1 median_split… 0. low 1. me…    37    20     0.298 0.766   0.766   ns          
    ## 2 median_split… 0. low 2. hi…    37    44     3.11  0.00189 0.00568 **          
    ## 3 median_split… 1. me… 2. hi…    20    44     2.26  0.0237  0.0473  *

### Restricting to non-adaptive CJ

![](figs-web/04-analysis-RQ2/unnamed-chunk-51-1.png)<!-- -->

For the case of SSR

    ## # A tibble: 3 × 5
    ##   ncr_level count median   min   max
    ##   <chr>     <int>  <dbl> <dbl> <dbl>
    ## 1 0. low        9  0.802 0.699 0.867
    ## 2 1. medium    16  0.873 0.757 0.947
    ## 3 2. high      39  0.943 0.672 0.994

    ## # A tibble: 1 × 6
    ##   .y.       n statistic    df         p method        
    ## * <chr> <int>     <dbl> <int>     <dbl> <chr>         
    ## 1 ssr      64      19.2     2 0.0000668 Kruskal-Wallis

    ## # A tibble: 3 × 9
    ##   .y.   group1    group2       n1    n2 statistic         p   p.adj p.adj.signif
    ## * <chr> <chr>     <chr>     <int> <int>     <dbl>     <dbl>   <dbl> <chr>       
    ## 1 ssr   0. low    1. medium     9    16      2.13 0.0331    5.15e-2 ns          
    ## 2 ssr   0. low    2. high       9    39      4.19 0.0000276 8.29e-5 ****        
    ## 3 ssr   1. medium 2. high      16    39      2.23 0.0257    5.15e-2 ns

For the case of SHR

    ## # A tibble: 3 × 5
    ##   ncr_level count median   min   max
    ##   <chr>     <int>  <dbl> <dbl> <dbl>
    ## 1 0. low        9  0.593 0.387 0.724
    ## 2 1. medium    16  0.730 0.259 0.900
    ## 3 2. high      39  0.865 0.456 0.985

    ## # A tibble: 1 × 6
    ##   .y.                   n statistic    df        p method        
    ## * <chr>             <int>     <dbl> <int>    <dbl> <chr>         
    ## 1 median_split_corr    64      17.7     2 0.000145 Kruskal-Wallis

    ## # A tibble: 3 × 9
    ##   .y.           group1 group2    n1    n2 statistic       p   p.adj p.adj.signif
    ## * <chr>         <chr>  <chr>  <int> <int>     <dbl>   <dbl>   <dbl> <chr>       
    ## 1 median_split… 0. low 1. me…     9    16      1.73 8.39e-2 8.39e-2 ns          
    ## 2 median_split… 0. low 2. hi…     9    39      3.90 9.56e-5 2.87e-4 ***         
    ## 3 median_split… 1. me… 2. hi…    16    39      2.43 1.49e-2 2.99e-2 *

# Recreating Verhavert et al. (2019) Figure 4

Verhavert et al. (2019) analysed data from 49 different CJ sessions.

Here we combine their data with our own, to extend their analysis.

![](figs-web/04-analysis-RQ2/unnamed-chunk-55-1.png)<!-- -->

We seem to have many more studies with low N_CR yet high SSR.

<table class="table table-striped" style="width: auto !important; margin-left: auto; margin-right: auto;">
<thead>
<tr>
<th style="text-align:left;">
judging_session
</th>
<th style="text-align:left;">
adaptivity
</th>
<th style="text-align:right;">
N_CR
</th>
<th style="text-align:right;">
SSR
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">
Bramley2018_1a
</td>
<td style="text-align:left;">
TRUE
</td>
<td style="text-align:right;">
14.386667
</td>
<td style="text-align:right;">
0.9685921
</td>
</tr>
<tr>
<td style="text-align:left;">
Jones2013a_expert1
</td>
<td style="text-align:left;">
TRUE
</td>
<td style="text-align:right;">
14.488095
</td>
<td style="text-align:right;">
0.9058558
</td>
</tr>
<tr>
<td style="text-align:left;">
Jones2013a_novice
</td>
<td style="text-align:left;">
TRUE
</td>
<td style="text-align:right;">
14.488095
</td>
<td style="text-align:right;">
0.9827716
</td>
</tr>
<tr>
<td style="text-align:left;">
Jones2014_GCSE070211data
</td>
<td style="text-align:left;">
TRUE
</td>
<td style="text-align:right;">
16.666667
</td>
<td style="text-align:right;">
0.9113619
</td>
</tr>
<tr>
<td style="text-align:left;">
Jones2015a_all-scripts
</td>
<td style="text-align:left;">
TRUE
</td>
<td style="text-align:right;">
9.618667
</td>
<td style="text-align:right;">
0.9722026
</td>
</tr>
<tr>
<td style="text-align:left;">
Jones2015a_subset-of-scripts
</td>
<td style="text-align:left;">
TRUE
</td>
<td style="text-align:right;">
10.000000
</td>
<td style="text-align:right;">
0.9618014
</td>
</tr>
<tr>
<td style="text-align:left;">
Pollitt2012a
</td>
<td style="text-align:left;">
TRUE
</td>
<td style="text-align:right;">
12.478723
</td>
<td style="text-align:right;">
0.9784732
</td>
</tr>
<tr>
<td style="text-align:left;">
Pollitt2017_example4
</td>
<td style="text-align:left;">
TRUE
</td>
<td style="text-align:right;">
16.338338
</td>
<td style="text-align:right;">
0.9510762
</td>
</tr>
<tr>
<td style="text-align:left;">
PollittX_art1
</td>
<td style="text-align:left;">
unknown
</td>
<td style="text-align:right;">
13.226667
</td>
<td style="text-align:right;">
0.9205022
</td>
</tr>
<tr>
<td style="text-align:left;">
PollittX_art2
</td>
<td style="text-align:left;">
unknown
</td>
<td style="text-align:right;">
13.253333
</td>
<td style="text-align:right;">
0.9207349
</td>
</tr>
<tr>
<td style="text-align:left;">
PollittX_college
</td>
<td style="text-align:left;">
unknown
</td>
<td style="text-align:right;">
11.416667
</td>
<td style="text-align:right;">
0.9377198
</td>
</tr>
<tr>
<td style="text-align:left;">
PollittX_design
</td>
<td style="text-align:left;">
unknown
</td>
<td style="text-align:right;">
13.886487
</td>
<td style="text-align:right;">
0.9792182
</td>
</tr>
<tr>
<td style="text-align:left;">
PollittX_efl-oracy
</td>
<td style="text-align:left;">
unknown
</td>
<td style="text-align:right;">
13.910448
</td>
<td style="text-align:right;">
0.9716803
</td>
</tr>
<tr>
<td style="text-align:left;">
PollittX_ielts-writing
</td>
<td style="text-align:left;">
unknown
</td>
<td style="text-align:right;">
14.200000
</td>
<td style="text-align:right;">
0.9623624
</td>
</tr>
<tr>
<td style="text-align:left;">
PollittX_music
</td>
<td style="text-align:left;">
unknown
</td>
<td style="text-align:right;">
10.318408
</td>
<td style="text-align:right;">
0.9646965
</td>
</tr>
<tr>
<td style="text-align:left;">
PollittX_peer-assessment
</td>
<td style="text-align:left;">
unknown
</td>
<td style="text-align:right;">
19.875000
</td>
<td style="text-align:right;">
0.9127419
</td>
</tr>
<tr>
<td style="text-align:left;">
PollittX_philosophy1
</td>
<td style="text-align:left;">
unknown
</td>
<td style="text-align:right;">
12.674286
</td>
<td style="text-align:right;">
0.9741318
</td>
</tr>
<tr>
<td style="text-align:left;">
PollittX_philosophy2a
</td>
<td style="text-align:left;">
unknown
</td>
<td style="text-align:right;">
10.062500
</td>
<td style="text-align:right;">
0.9538946
</td>
</tr>
<tr>
<td style="text-align:left;">
PollittX_philosophy2b
</td>
<td style="text-align:left;">
unknown
</td>
<td style="text-align:right;">
10.131250
</td>
<td style="text-align:right;">
0.9526881
</td>
</tr>
<tr>
<td style="text-align:left;">
PollittX_philosophy2c
</td>
<td style="text-align:left;">
unknown
</td>
<td style="text-align:right;">
10.193750
</td>
<td style="text-align:right;">
0.9641178
</td>
</tr>
</tbody>
</table>

The bulk of those are from Pollitt, where it is likely that adaptivity
was used – and this is known to inflate SSR (indeed, Bramley2018_1a was
a study designed to show just that).

The adaptivity seems to produce separate clusters in our sample:

![](figs-web/04-analysis-RQ2/unnamed-chunk-57-1.png)<!-- -->

Let’s see what the main SSR vs split-halves plot looks like for only the
non-adaptive studies.

![](figs-web/04-analysis-RQ2/unnamed-chunk-58-1.png)<!-- -->

Or the simpler version, with adaptive vs non-adaptive highlighted:

![](figs-web/04-analysis-RQ2/unnamed-chunk-59-1.png)<!-- -->

This suggests that the SSR/split-halves relationship looks quite similar
whether studies used adaptivity or not.

### Regression with logit link function

Following Verhavert et al. (2019), try using a logit link function on
our data:

    ## 
    ## Call:
    ## glm(formula = ssr ~ N_CR, family = gaussian(link = "logit"), 
    ##     data = .)
    ## 
    ## Deviance Residuals: 
    ##      Min        1Q    Median        3Q       Max  
    ## -0.23347  -0.03676   0.00241   0.05259   0.08927  
    ## 
    ## Coefficients:
    ##              Estimate Std. Error t value Pr(>|t|)    
    ## (Intercept) 2.1144557  0.0823993   25.66   <2e-16 ***
    ## N_CR        0.0008658  0.0005552    1.56    0.122    
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## (Dispersion parameter for gaussian family taken to be 0.004400395)
    ## 
    ##     Null deviance: 0.46762  on 100  degrees of freedom
    ## Residual deviance: 0.43564  on  99  degrees of freedom
    ## AIC: -257.43
    ## 
    ## Number of Fisher Scoring iterations: 6

Verhavert et al. (2019) found that N_CR was significant in the model,
while it’s not for us.

Restricting to only the non-adaptive studies in our sample, it is
significant:

    ## 
    ## Call:
    ## glm(formula = ssr ~ N_CR, family = gaussian(link = "logit"), 
    ##     data = .)
    ## 
    ## Deviance Residuals: 
    ##       Min         1Q     Median         3Q        Max  
    ## -0.222757  -0.032873   0.007371   0.052066   0.089445  
    ## 
    ## Coefficients:
    ##              Estimate Std. Error t value Pr(>|t|)    
    ## (Intercept) 1.7803625  0.1010092  17.626   <2e-16 ***
    ## N_CR        0.0020979  0.0008948   2.345   0.0223 *  
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## (Dispersion parameter for gaussian family taken to be 0.004515218)
    ## 
    ##     Null deviance: 0.35355  on 63  degrees of freedom
    ## Residual deviance: 0.27993  on 62  degrees of freedom
    ## AIC: -160.03
    ## 
    ## Number of Fisher Scoring iterations: 13
