CJ meta-analysis: RQ2
================
George Kinnear
2023-08-15

# About the sample

    ## # A tibble: 1 × 1
    ##   n_datatsets
    ##         <int>
    ## 1         117

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
117
</td>
</tr>
<tr>
<td style="text-align:left;">
10+
</td>
<td style="text-align:right;">
116
</td>
</tr>
<tr>
<td style="text-align:left;">
20+
</td>
<td style="text-align:right;">
80
</td>
</tr>
<tr>
<td style="text-align:left;">
37+
</td>
<td style="text-align:right;">
60
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
0.916
</td>
<td style="text-align:right;">
0.994
</td>
<td style="text-align:right;">
0.983
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
0.794
</td>
<td style="text-align:right;">
0.985
</td>
<td style="text-align:right;">
0.709
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
0.769
</td>
<td style="text-align:right;">
0.956
</td>
<td style="text-align:right;">
0.761
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
0.919
</td>
<td style="text-align:right;">
0.994
</td>
<td style="text-align:right;">
0.988
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
0.827
</td>
<td style="text-align:right;">
0.985
</td>
<td style="text-align:right;">
0.775
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
0.754
</td>
<td style="text-align:right;">
0.943
</td>
<td style="text-align:right;">
0.662
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
0.938
</td>
<td style="text-align:right;">
0.994
</td>
<td style="text-align:right;">
0.983
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
0.856
</td>
<td style="text-align:right;">
0.985
</td>
<td style="text-align:right;">
0.817
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
0.729
</td>
<td style="text-align:right;">
0.943
</td>
<td style="text-align:right;">
0.583
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
    ## -0.23291 -0.03379  0.00746  0.03836  0.36852 
    ## 
    ## Coefficients:
    ##             Estimate Std. Error t value Pr(>|t|)    
    ## (Intercept) -0.92429    0.09524  -9.704   <2e-16 ***
    ## ssr          1.87034    0.10483  17.841   <2e-16 ***
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## Residual standard error: 0.07515 on 115 degrees of freedom
    ## Multiple R-squared:  0.7346, Adjusted R-squared:  0.7323 
    ## F-statistic: 318.3 on 1 and 115 DF,  p-value: < 2.2e-16

    ## 
    ##  Pearson's product-moment correlation
    ## 
    ## data:  median_split_corr and ssr
    ## t = 17.841, df = 115, p-value < 2.2e-16
    ## alternative hypothesis: true correlation is not equal to 0
    ## 95 percent confidence interval:
    ##  0.8000345 0.8987815
    ## sample estimates:
    ##     cor 
    ## 0.85709

    ## 
    ##  Spearman's rank correlation rho
    ## 
    ## data:  median_split_corr and ssr
    ## S = 34708, p-value < 2.2e-16
    ## alternative hypothesis: true rho is not equal to 0
    ## sample estimates:
    ##       rho 
    ## 0.8699666

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
    ## -0.37120 -0.02439  0.00461  0.02651  0.40138 
    ## 
    ## Coefficients:
    ##              Estimate Std. Error t value Pr(>|t|)    
    ## (Intercept)  -0.39517    0.07592  -5.205 8.57e-07 ***
    ## median_ssr_x  1.39314    0.09027  15.433  < 2e-16 ***
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## Residual standard error: 0.08323 on 115 degrees of freedom
    ## Multiple R-squared:  0.6744, Adjusted R-squared:  0.6716 
    ## F-statistic: 238.2 on 1 and 115 DF,  p-value: < 2.2e-16

We can add a 95% prediction interval from the linear regression:

    ## Warning: Removed 12 rows containing missing values (`geom_line()`).

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
112
</td>
<td style="text-align:right;">
82
</td>
<td style="text-align:left;">
73%
</td>
</tr>
<tr>
<td style="text-align:right;">
0.75
</td>
<td style="text-align:right;">
99
</td>
<td style="text-align:right;">
82
</td>
<td style="text-align:left;">
83%
</td>
</tr>
<tr>
<td style="text-align:right;">
0.80
</td>
<td style="text-align:right;">
78
</td>
<td style="text-align:right;">
72
</td>
<td style="text-align:left;">
92%
</td>
</tr>
<tr>
<td style="text-align:right;">
0.85
</td>
<td style="text-align:right;">
51
</td>
<td style="text-align:right;">
50
</td>
<td style="text-align:left;">
98%
</td>
</tr>
<tr>
<td style="text-align:right;">
0.90
</td>
<td style="text-align:right;">
32
</td>
<td style="text-align:right;">
32
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
112
</td>
<td style="text-align:left;">
82 (73%)
</td>
<td style="text-align:left;">
54 (48%)
</td>
<td style="text-align:left;">
23 (21%)
</td>
</tr>
<tr>
<td style="text-align:right;">
0.75
</td>
<td style="text-align:right;">
99
</td>
<td style="text-align:left;">
82 (83%)
</td>
<td style="text-align:left;">
54 (55%)
</td>
<td style="text-align:left;">
23 (23%)
</td>
</tr>
<tr>
<td style="text-align:right;">
0.80
</td>
<td style="text-align:right;">
78
</td>
<td style="text-align:left;">
72 (92%)
</td>
<td style="text-align:left;">
51 (65%)
</td>
<td style="text-align:left;">
23 (29%)
</td>
</tr>
<tr>
<td style="text-align:right;">
0.85
</td>
<td style="text-align:right;">
51
</td>
<td style="text-align:left;">
50 (98%)
</td>
<td style="text-align:left;">
47 (92%)
</td>
<td style="text-align:left;">
23 (45%)
</td>
</tr>
<tr>
<td style="text-align:right;">
0.90
</td>
<td style="text-align:right;">
32
</td>
<td style="text-align:left;">
32 (100%)
</td>
<td style="text-align:left;">
32 (100%)
</td>
<td style="text-align:left;">
21 (66%)
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
117
</td>
<td style="text-align:right;">
0.867
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
80
</td>
<td style="text-align:right;">
0.866
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
60
</td>
<td style="text-align:right;">
0.858
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
    ## -0.37120 -0.02439  0.00461  0.02651  0.40138 
    ## 
    ## Coefficients:
    ##              Estimate Std. Error t value Pr(>|t|)    
    ## (Intercept)  -0.39517    0.07592  -5.205 8.57e-07 ***
    ## median_ssr_x  1.39314    0.09027  15.433  < 2e-16 ***
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## Residual standard error: 0.08323 on 115 degrees of freedom
    ## Multiple R-squared:  0.6744, Adjusted R-squared:  0.6716 
    ## F-statistic: 238.2 on 1 and 115 DF,  p-value: < 2.2e-16

    ## 
    ## Call:
    ## lm(formula = median_split_corr ~ median_ssr_x, data = reliability_corr_plot_data %>% 
    ##     filter(N_CR >= 20))
    ## 
    ## Residuals:
    ##      Min       1Q   Median       3Q      Max 
    ## -0.38071 -0.01795  0.01064  0.02518  0.38599 
    ## 
    ## Coefficients:
    ##              Estimate Std. Error t value Pr(>|t|)    
    ## (Intercept)   -0.3279     0.1025  -3.198    0.002 ** 
    ## median_ssr_x   1.3147     0.1195  11.006   <2e-16 ***
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## Residual standard error: 0.09101 on 78 degrees of freedom
    ## Multiple R-squared:  0.6083, Adjusted R-squared:  0.6033 
    ## F-statistic: 121.1 on 1 and 78 DF,  p-value: < 2.2e-16

    ## 
    ## Call:
    ## lm(formula = median_split_corr ~ median_ssr_x, data = reliability_corr_plot_data %>% 
    ##     filter(N_CR >= 37))
    ## 
    ## Residuals:
    ##      Min       1Q   Median       3Q      Max 
    ## -0.25909 -0.03094  0.00994  0.02568  0.35354 
    ## 
    ## Coefficients:
    ##              Estimate Std. Error t value Pr(>|t|)    
    ## (Intercept)   -0.2135     0.1116  -1.913   0.0606 .  
    ## median_ssr_x   1.1906     0.1281   9.294 4.35e-13 ***
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## Residual standard error: 0.08771 on 58 degrees of freedom
    ## Multiple R-squared:  0.5983, Adjusted R-squared:  0.5914 
    ## F-statistic: 86.38 on 1 and 58 DF,  p-value: 4.352e-13

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
.21\*
</td>
<td style="text-align:left;">
.07
</td>
<td style="text-align:left;">
.19\*
</td>
<td style="text-align:left;">
-.01
</td>
<td style="text-align:left;">
.24\*\*
</td>
<td style="text-align:left;">
-.05
</td>
</tr>
<tr>
<td style="text-align:left;">
SSR
</td>
<td style="text-align:left;">
.18\*
</td>
<td style="text-align:left;">
.15
</td>
<td style="text-align:left;">
.19\*
</td>
<td style="text-align:left;">
.08
</td>
<td style="text-align:left;">
.23\*
</td>
<td style="text-align:left;">
.09
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
    ## SHR & .21* & .07 & .19* & -.01 & .24** & -.05\\
    ## SSR & .18* & .15 & .19* & .08 & .23* & .09\\
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
    ## -0.49754 -0.07468  0.02723  0.10889  0.21927 
    ## 
    ## Coefficients:
    ##               Estimate Std. Error t value Pr(>|t|)    
    ## (Intercept)  7.537e-01  1.400e-02  53.834   <2e-16 ***
    ## observed_N_A 1.431e-05  1.450e-04   0.099   0.9216    
    ## observed_N_C 6.744e-07  2.155e-06   0.313   0.7549    
    ## N_CR         7.316e-05  3.242e-05   2.257   0.0259 *  
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## Residual standard error: 0.1406 on 113 degrees of freedom
    ## Multiple R-squared:  0.0868, Adjusted R-squared:  0.06255 
    ## F-statistic:  3.58 on 3 and 113 DF,  p-value: 0.01614

    ## 
    ## Call:
    ## lm(formula = formula_shr, data = reliability_characteristics)
    ## 
    ## Standardized Coefficients::
    ##  (Intercept) observed_N_A observed_N_C         N_CR 
    ##           NA   0.04054942   0.12679746   0.22085702

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
    ## -0.228413 -0.032857  0.009193  0.053790  0.084774 
    ## 
    ## Coefficients:
    ##                Estimate Std. Error t value Pr(>|t|)    
    ## (Intercept)   8.989e-01  6.426e-03 139.882   <2e-16 ***
    ## observed_N_A -5.627e-05  6.658e-05  -0.845   0.3998    
    ## observed_N_C  1.210e-06  9.891e-07   1.223   0.2238    
    ## N_CR          3.648e-05  1.488e-05   2.452   0.0157 *  
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## Residual standard error: 0.06455 on 113 degrees of freedom
    ## Multiple R-squared:  0.08371,    Adjusted R-squared:  0.05939 
    ## F-statistic: 3.441 on 3 and 113 DF,  p-value: 0.01924

    ## 
    ## Call:
    ## lm(formula = formula_ssr, data = reliability_characteristics)
    ## 
    ## Standardized Coefficients::
    ##  (Intercept) observed_N_A observed_N_C         N_CR 
    ##           NA   -0.3479033    0.4963493    0.2403271

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
0.04
</td>
<td style="text-align:left;">
.922
</td>
<td style="text-align:right;">
-0.35
</td>
<td style="text-align:left;">
.400
</td>
</tr>
<tr>
<td style="text-align:left;">
observed_N_C
</td>
<td style="text-align:right;">
0.13
</td>
<td style="text-align:left;">
.755
</td>
<td style="text-align:right;">
0.50
</td>
<td style="text-align:left;">
.224
</td>
</tr>
<tr>
<td style="text-align:left;">
N_CR
</td>
<td style="text-align:right;">
0.22
</td>
<td style="text-align:left;">
.026\*
</td>
<td style="text-align:right;">
0.24
</td>
<td style="text-align:left;">
.016\*
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
    ## observed\_N\_A & 0.04 & .922 & -0.35 & .400\\
    ## observed\_N\_C & 0.13 & .755 & 0.50 & .224\\
    ## N\_CR & 0.22 & .026* & 0.24 & .016*\\
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
    ##    31.397280    36.468675     2.301802

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
    ## -0.205831 -0.035577  0.008015  0.045801  0.087453 
    ## 
    ## Coefficients:
    ##                                          Estimate Std. Error t value Pr(>|t|)
    ## (Intercept)                             8.803e-01  1.051e-02  83.720  < 2e-16
    ## observed_N_A                           -1.104e-04  1.780e-04  -0.620 0.536475
    ## observed_N_C                            1.869e-05  6.197e-06   3.016 0.003184
    ## observed_N_R                            5.469e-05  3.626e-05   1.508 0.134342
    ## observed_N_A:observed_N_C              -1.099e-08  2.063e-08  -0.533 0.595256
    ## observed_N_A:observed_N_R              -8.121e-07  4.541e-07  -1.788 0.076496
    ## observed_N_C:observed_N_R              -9.582e-09  2.808e-09  -3.412 0.000906
    ## observed_N_A:observed_N_C:observed_N_R  1.184e-11  1.907e-11   0.621 0.536096
    ##                                           
    ## (Intercept)                            ***
    ## observed_N_A                              
    ## observed_N_C                           ** 
    ## observed_N_R                              
    ## observed_N_A:observed_N_C                 
    ## observed_N_A:observed_N_R              .  
    ## observed_N_C:observed_N_R              ***
    ## observed_N_A:observed_N_C:observed_N_R    
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## Residual standard error: 0.06189 on 109 degrees of freedom
    ## Multiple R-squared:  0.1875, Adjusted R-squared:  0.1353 
    ## F-statistic: 3.593 on 7 and 109 DF,  p-value: 0.001614

It is interesting here to see the interaction between $N_C$ and $N_R$
appearing significant in the model.

Focusing on N_CR, here is a model with just $N_C$ and $N_R$ (and their
interaction):

    ## 
    ## Call:
    ## lm(formula = ssr ~ observed_N_C * observed_N_R, data = reliability_characteristics)
    ## 
    ## Residuals:
    ##      Min       1Q   Median       3Q      Max 
    ## -0.21529 -0.03048  0.00891  0.04673  0.08778 
    ## 
    ## Coefficients:
    ##                             Estimate Std. Error t value Pr(>|t|)    
    ## (Intercept)                8.839e-01  7.826e-03 112.946  < 2e-16 ***
    ## observed_N_C               7.802e-06  1.935e-06   4.032 0.000101 ***
    ## observed_N_R               9.780e-05  2.908e-05   3.363 0.001053 ** 
    ## observed_N_C:observed_N_R -7.007e-09  1.809e-09  -3.874 0.000180 ***
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## Residual standard error: 0.0621 on 113 degrees of freedom
    ## Multiple R-squared:  0.1519, Adjusted R-squared:  0.1294 
    ## F-statistic: 6.747 on 3 and 113 DF,  p-value: 0.0003154

    ## 
    ## Call:
    ## lm(formula = ssr ~ observed_N_C * observed_N_R, data = reliability_characteristics)
    ## 
    ## Standardized Coefficients::
    ##               (Intercept)              observed_N_C              observed_N_R 
    ##                        NA                 3.2012061                 0.4913485 
    ## observed_N_C:observed_N_R 
    ##                -3.2911051

Another approach would be to consider log-transformed versions of the
three characteristics:

    ## 
    ## Call:
    ## lm(formula = ssr ~ log_N_A * log_N_C * log_N_R, data = .)
    ## 
    ## Residuals:
    ##       Min        1Q    Median        3Q       Max 
    ## -0.169643 -0.032800  0.007891  0.047142  0.092695 
    ## 
    ## Coefficients:
    ##                          Estimate Std. Error t value Pr(>|t|)    
    ## (Intercept)              0.870550   0.226103   3.850 0.000199 ***
    ## log_N_A                 -0.251412   0.139957  -1.796 0.075207 .  
    ## log_N_C                  0.088168   0.077921   1.131 0.260328    
    ## log_N_R                 -0.098080   0.119844  -0.818 0.414916    
    ## log_N_A:log_N_C          0.039468   0.041520   0.951 0.343919    
    ## log_N_A:log_N_R          0.122037   0.070828   1.723 0.087722 .  
    ## log_N_C:log_N_R         -0.003162   0.033758  -0.094 0.925543    
    ## log_N_A:log_N_C:log_N_R -0.020435   0.017389  -1.175 0.242500    
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## Residual standard error: 0.05925 on 109 degrees of freedom
    ## Multiple R-squared:  0.2553, Adjusted R-squared:  0.2075 
    ## F-statistic: 5.339 on 7 and 109 DF,  p-value: 2.823e-05

## What about the suggested thesholds of N_CR\>=20 and NC_R\>=37?

Let’s compare SSR and SHR for these thresholds

![](figs-web/04-analysis-RQ2/unnamed-chunk-47-1.png)<!-- -->

For the case of SSR

    ## # A tibble: 3 × 5
    ##   ncr_level count median   min   max
    ##   <chr>     <int>  <dbl> <dbl> <dbl>
    ## 1 0. low       37  0.911 0.699 0.983
    ## 2 1. medium    20  0.885 0.757 0.982
    ## 3 2. high      60  0.938 0.672 0.994

    ## # A tibble: 1 × 6
    ##   .y.       n statistic    df      p method        
    ## * <chr> <int>     <dbl> <int>  <dbl> <chr>         
    ## 1 ssr     117      6.32     2 0.0424 Kruskal-Wallis

    ## # A tibble: 3 × 9
    ##   .y.   group1    group2       n1    n2 statistic      p  p.adj p.adj.signif
    ## * <chr> <chr>     <chr>     <int> <int>     <dbl>  <dbl>  <dbl> <chr>       
    ## 1 ssr   0. low    1. medium    37    20     -1.03 0.305  0.305  ns          
    ## 2 ssr   0. low    2. high      37    60      1.55 0.120  0.240  ns          
    ## 3 ssr   1. medium 2. high      20    60      2.36 0.0183 0.0549 ns

For the case of SHR

    ## # A tibble: 3 × 5
    ##   ncr_level count median   min   max
    ##   <chr>     <int>  <dbl> <dbl> <dbl>
    ## 1 0. low       37  0.732 0.387 0.906
    ## 2 1. medium    20  0.740 0.259 0.911
    ## 3 2. high      60  0.856 0.456 0.985

    ## # A tibble: 1 × 6
    ##   .y.                   n statistic    df        p method        
    ## * <chr>             <int>     <dbl> <int>    <dbl> <chr>         
    ## 1 median_split_corr   117      16.3     2 0.000292 Kruskal-Wallis

    ## # A tibble: 3 × 9
    ##   .y.           group1 group2    n1    n2 statistic       p   p.adj p.adj.signif
    ## * <chr>         <chr>  <chr>  <int> <int>     <dbl>   <dbl>   <dbl> <chr>       
    ## 1 median_split… 0. low 1. me…    37    20     0.286 7.75e-1 7.75e-1 ns          
    ## 2 median_split… 0. low 2. hi…    37    60     3.69  2.21e-4 6.62e-4 ***         
    ## 3 median_split… 1. me… 2. hi…    20    60     2.68  7.29e-3 1.46e-2 *

### Restricting to non-adaptive CJ

![](figs-web/04-analysis-RQ2/unnamed-chunk-51-1.png)<!-- -->

For the case of SSR

    ## # A tibble: 3 × 5
    ##   ncr_level count median   min   max
    ##   <chr>     <int>  <dbl> <dbl> <dbl>
    ## 1 0. low        9  0.802 0.699 0.867
    ## 2 1. medium    16  0.873 0.757 0.947
    ## 3 2. high      55  0.939 0.672 0.994

    ## # A tibble: 1 × 6
    ##   .y.       n statistic    df          p method        
    ## * <chr> <int>     <dbl> <int>      <dbl> <chr>         
    ## 1 ssr      80      24.7     2 0.00000425 Kruskal-Wallis

    ## # A tibble: 3 × 9
    ##   .y.   group1    group2       n1    n2 statistic         p   p.adj p.adj.signif
    ## * <chr> <chr>     <chr>     <int> <int>     <dbl>     <dbl>   <dbl> <chr>       
    ## 1 ssr   0. low    1. medium     9    16      1.83   6.71e-2 6.71e-2 ns          
    ## 2 ssr   0. low    2. high       9    55      4.46   8.20e-6 2.46e-5 ****        
    ## 3 ssr   1. medium 2. high      16    55      2.96   3.08e-3 6.15e-3 **

For the case of SHR

    ## # A tibble: 3 × 5
    ##   ncr_level count median   min   max
    ##   <chr>     <int>  <dbl> <dbl> <dbl>
    ## 1 0. low        9  0.593 0.387 0.724
    ## 2 1. medium    16  0.730 0.259 0.900
    ## 3 2. high      55  0.863 0.456 0.985

    ## # A tibble: 1 × 6
    ##   .y.                   n statistic    df         p method        
    ## * <chr>             <int>     <dbl> <int>     <dbl> <chr>         
    ## 1 median_split_corr    80      22.9     2 0.0000106 Kruskal-Wallis

    ## # A tibble: 3 × 9
    ##   .y.           group1 group2    n1    n2 statistic       p   p.adj p.adj.signif
    ## * <chr>         <chr>  <chr>  <int> <int>     <dbl>   <dbl>   <dbl> <chr>       
    ## 1 median_split… 0. low 1. me…     9    16      1.57 1.16e-1 1.16e-1 ns          
    ## 2 median_split… 0. low 2. hi…     9    55      4.20 2.68e-5 8.05e-5 ****        
    ## 3 median_split… 1. me… 2. hi…    16    55      3.01 2.63e-3 5.26e-3 **

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
    ##       Min         1Q     Median         3Q        Max  
    ## -0.238903  -0.034784   0.007721   0.052822   0.085166  
    ## 
    ## Coefficients:
    ##              Estimate Std. Error t value Pr(>|t|)    
    ## (Intercept) 2.1563916  0.0811184   26.58   <2e-16 ***
    ## N_CR        0.0010015  0.0005998    1.67   0.0977 .  
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## (Dispersion parameter for gaussian family taken to be 0.004190147)
    ## 
    ##     Null deviance: 0.51384  on 116  degrees of freedom
    ## Residual deviance: 0.48186  on 115  degrees of freedom
    ## AIC: -304.56
    ## 
    ## Number of Fisher Scoring iterations: 7

Verhavert et al. (2019) found that N_CR was significant in the model,
while it’s not for us.

Restricting to only the non-adaptive studies in our sample, it is
significant:

    ## Warning: glm.fit: algorithm did not converge

    ## 
    ## Call:
    ## glm(formula = ssr ~ N_CR, family = gaussian(link = "logit"), 
    ##     data = .)
    ## 
    ## Deviance Residuals: 
    ##      Min        1Q    Median        3Q       Max  
    ## -0.25358  -0.03591   0.01168   0.04605   0.07959  
    ## 
    ## Coefficients:
    ##             Estimate Std. Error t value Pr(>|t|)    
    ## (Intercept) 1.725769   0.118742   14.53  < 2e-16 ***
    ## N_CR        0.004608   0.001562    2.95  0.00419 ** 
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## (Dispersion parameter for gaussian family taken to be 0.004415026)
    ## 
    ##     Null deviance: 0.41546  on 79  degrees of freedom
    ## Residual deviance: 0.34402  on 78  degrees of freedom
    ## AIC: -202.9
    ## 
    ## Number of Fisher Scoring iterations: 25
