CJ meta-analysis: RQ2
================
George Kinnear
2023-08-15

# About the sample

    ## # A tibble: 1 × 1
    ##   n_datatsets
    ##         <int>
    ## 1         121

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
121
</td>
</tr>
<tr>
<td style="text-align:left;">
10+
</td>
<td style="text-align:right;">
120
</td>
</tr>
<tr>
<td style="text-align:left;">
20+
</td>
<td style="text-align:right;">
84
</td>
</tr>
<tr>
<td style="text-align:left;">
37+
</td>
<td style="text-align:right;">
62
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
0.913
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
0.791
</td>
<td style="text-align:right;">
0.985
</td>
<td style="text-align:right;">
0.719
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
0.768
</td>
<td style="text-align:right;">
0.956
</td>
<td style="text-align:right;">
0.769
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
0.915
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
0.804
</td>
<td style="text-align:right;">
0.985
</td>
<td style="text-align:right;">
0.786
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
0.679
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
0.933
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
37+
</td>
<td style="text-align:right;">
0.456
</td>
<td style="text-align:right;">
0.854
</td>
<td style="text-align:right;">
0.985
</td>
<td style="text-align:right;">
0.823
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
0.724
</td>
<td style="text-align:right;">
0.943
</td>
<td style="text-align:right;">
0.597
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
    ## -0.23923 -0.03336  0.00557  0.03847  0.36321 
    ## 
    ## Coefficients:
    ##             Estimate Std. Error t value Pr(>|t|)    
    ## (Intercept) -0.89634    0.09443  -9.492 2.98e-16 ***
    ## ssr          1.84178    0.10407  17.697  < 2e-16 ***
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## Residual standard error: 0.07526 on 119 degrees of freedom
    ## Multiple R-squared:  0.7247, Adjusted R-squared:  0.7223 
    ## F-statistic: 313.2 on 1 and 119 DF,  p-value: < 2.2e-16

    ## 
    ##  Pearson's product-moment correlation
    ## 
    ## data:  median_split_corr and ssr
    ## t = 17.697, df = 119, p-value < 2.2e-16
    ## alternative hypothesis: true correlation is not equal to 0
    ## 95 percent confidence interval:
    ##  0.7933180 0.8939349
    ## sample estimates:
    ##       cor 
    ## 0.8512707

    ## 
    ##  Spearman's rank correlation rho
    ## 
    ## data:  median_split_corr and ssr
    ## S = 39980, p-value < 2.2e-16
    ## alternative hypothesis: true rho is not equal to 0
    ## sample estimates:
    ##       rho 
    ## 0.8645847

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
    ## -0.37498 -0.02627  0.00401  0.02643  0.39610 
    ## 
    ## Coefficients:
    ##              Estimate Std. Error t value Pr(>|t|)    
    ## (Intercept)  -0.37665    0.07484  -5.033 1.73e-06 ***
    ## median_ssr_x  1.37311    0.08913  15.405  < 2e-16 ***
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## Residual standard error: 0.08288 on 119 degrees of freedom
    ## Multiple R-squared:  0.666,  Adjusted R-squared:  0.6632 
    ## F-statistic: 237.3 on 1 and 119 DF,  p-value: < 2.2e-16

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
116
</td>
<td style="text-align:right;">
86
</td>
<td style="text-align:left;">
74%
</td>
</tr>
<tr>
<td style="text-align:right;">
0.75
</td>
<td style="text-align:right;">
103
</td>
<td style="text-align:right;">
86
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
80
</td>
<td style="text-align:right;">
74
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
52
</td>
<td style="text-align:right;">
51
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
116
</td>
<td style="text-align:left;">
86 (74%)
</td>
<td style="text-align:left;">
54 (47%)
</td>
<td style="text-align:left;">
23 (20%)
</td>
</tr>
<tr>
<td style="text-align:right;">
0.75
</td>
<td style="text-align:right;">
103
</td>
<td style="text-align:left;">
86 (83%)
</td>
<td style="text-align:left;">
54 (52%)
</td>
<td style="text-align:left;">
23 (22%)
</td>
</tr>
<tr>
<td style="text-align:right;">
0.80
</td>
<td style="text-align:right;">
80
</td>
<td style="text-align:left;">
74 (92%)
</td>
<td style="text-align:left;">
51 (64%)
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
52
</td>
<td style="text-align:left;">
51 (98%)
</td>
<td style="text-align:left;">
47 (90%)
</td>
<td style="text-align:left;">
23 (44%)
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
121
</td>
<td style="text-align:right;">
0.860
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
84
</td>
<td style="text-align:right;">
0.858
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
62
</td>
<td style="text-align:right;">
0.857
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
    ## -0.37498 -0.02627  0.00401  0.02643  0.39610 
    ## 
    ## Coefficients:
    ##              Estimate Std. Error t value Pr(>|t|)    
    ## (Intercept)  -0.37665    0.07484  -5.033 1.73e-06 ***
    ## median_ssr_x  1.37311    0.08913  15.405  < 2e-16 ***
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## Residual standard error: 0.08288 on 119 degrees of freedom
    ## Multiple R-squared:  0.666,  Adjusted R-squared:  0.6632 
    ## F-statistic: 237.3 on 1 and 119 DF,  p-value: < 2.2e-16

    ## 
    ## Call:
    ## lm(formula = median_split_corr ~ median_ssr_x, data = reliability_corr_plot_data %>% 
    ##     filter(N_CR >= 20))
    ## 
    ## Residuals:
    ##      Min       1Q   Median       3Q      Max 
    ## -0.38672 -0.01811  0.01197  0.02584  0.37759 
    ## 
    ## Coefficients:
    ##              Estimate Std. Error t value Pr(>|t|)    
    ## (Intercept)  -0.29856    0.09922  -3.009  0.00348 ** 
    ## median_ssr_x  1.28296    0.11597  11.063  < 2e-16 ***
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## Residual standard error: 0.08994 on 82 degrees of freedom
    ## Multiple R-squared:  0.5988, Adjusted R-squared:  0.5939 
    ## F-statistic: 122.4 on 1 and 82 DF,  p-value: < 2.2e-16

    ## 
    ## Call:
    ## lm(formula = median_split_corr ~ median_ssr_x, data = reliability_corr_plot_data %>% 
    ##     filter(N_CR >= 37))
    ## 
    ## Residuals:
    ##      Min       1Q   Median       3Q      Max 
    ## -0.25897 -0.02733  0.01009  0.02542  0.35358 
    ## 
    ## Coefficients:
    ##              Estimate Std. Error t value Pr(>|t|)    
    ## (Intercept)   -0.2132     0.1095  -1.947   0.0562 .  
    ## median_ssr_x   1.1901     0.1258   9.457  1.7e-13 ***
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## Residual standard error: 0.08631 on 60 degrees of freedom
    ## Multiple R-squared:  0.5985, Adjusted R-squared:  0.5918 
    ## F-statistic: 89.43 on 1 and 60 DF,  p-value: 1.696e-13

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
.19\*
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
.10
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
    ## SSR & .19* & .15 & .19* & .08 & .23* & .10\\
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
    ## -0.49794 -0.07128  0.02523  0.10811  0.21888 
    ## 
    ## Coefficients:
    ##               Estimate Std. Error t value Pr(>|t|)    
    ## (Intercept)  7.541e-01  1.351e-02  55.800   <2e-16 ***
    ## observed_N_A 1.500e-05  1.425e-04   0.105   0.9164    
    ## observed_N_C 6.621e-07  2.117e-06   0.313   0.7550    
    ## N_CR         7.295e-05  3.183e-05   2.292   0.0237 *  
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## Residual standard error: 0.1382 on 117 degrees of freedom
    ## Multiple R-squared:  0.08665,    Adjusted R-squared:  0.06323 
    ## F-statistic:   3.7 on 3 and 117 DF,  p-value: 0.01378

    ## 
    ## Call:
    ## lm(formula = formula_shr, data = reliability_characteristics)
    ## 
    ## Standardized Coefficients::
    ##  (Intercept) observed_N_A observed_N_C         N_CR 
    ##           NA   0.04250891   0.12454483   0.22043111

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
    ## -0.227361 -0.033042  0.009608  0.053622  0.086032 
    ## 
    ## Coefficients:
    ##                Estimate Std. Error t value Pr(>|t|)    
    ## (Intercept)   8.978e-01  6.249e-03 143.666   <2e-16 ***
    ## observed_N_A -5.764e-05  6.591e-05  -0.875   0.3836    
    ## observed_N_C  1.235e-06  9.790e-07   1.262   0.2096    
    ## N_CR          3.724e-05  1.472e-05   2.530   0.0127 *  
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## Residual standard error: 0.06393 on 117 degrees of freedom
    ## Multiple R-squared:  0.08565,    Adjusted R-squared:  0.0622 
    ## F-statistic: 3.653 on 3 and 117 DF,  p-value: 0.01463

    ## 
    ## Call:
    ## lm(formula = formula_ssr, data = reliability_characteristics)
    ## 
    ## Standardized Coefficients::
    ##  (Intercept) observed_N_A observed_N_C         N_CR 
    ##           NA   -0.3534834    0.5027320    0.2434924

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
.916
</td>
<td style="text-align:right;">
-0.35
</td>
<td style="text-align:left;">
.384
</td>
</tr>
<tr>
<td style="text-align:left;">
observed_N_C
</td>
<td style="text-align:right;">
0.12
</td>
<td style="text-align:left;">
.755
</td>
<td style="text-align:right;">
0.50
</td>
<td style="text-align:left;">
.210
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
.024\*
</td>
<td style="text-align:right;">
0.24
</td>
<td style="text-align:left;">
.013\*
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
    ## observed\_N\_A & 0.04 & .916 & -0.35 & .384\\
    ## observed\_N\_C & 0.12 & .755 & 0.50 & .210\\
    ## N\_CR & 0.22 & .024* & 0.24 & .013*\\
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
    ##     31.34443     36.41562      2.29866

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
    ## -0.205444 -0.035728  0.008875  0.043268  0.086729 
    ## 
    ## Coefficients:
    ##                                          Estimate Std. Error t value Pr(>|t|)
    ## (Intercept)                             8.792e-01  1.009e-02  87.174  < 2e-16
    ## observed_N_A                           -1.034e-04  1.753e-04  -0.590 0.556477
    ## observed_N_C                            1.903e-05  6.080e-06   3.130 0.002224
    ## observed_N_R                            5.572e-05  3.568e-05   1.561 0.121216
    ## observed_N_A:observed_N_C              -1.215e-08  2.026e-08  -0.600 0.549948
    ## observed_N_A:observed_N_R              -8.360e-07  4.463e-07  -1.873 0.063634
    ## observed_N_C:observed_N_R              -9.755e-09  2.747e-09  -3.551 0.000561
    ## observed_N_A:observed_N_C:observed_N_R  1.292e-11  1.872e-11   0.690 0.491755
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
    ## Residual standard error: 0.06114 on 113 degrees of freedom
    ## Multiple R-squared:  0.1922, Adjusted R-squared:  0.1422 
    ## F-statistic: 3.841 on 7 and 113 DF,  p-value: 0.0008778

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
    ## -0.214449 -0.031547  0.008919  0.046565  0.088417 
    ## 
    ## Coefficients:
    ##                             Estimate Std. Error t value Pr(>|t|)    
    ## (Intercept)                8.830e-01  7.538e-03 117.135  < 2e-16 ***
    ## observed_N_C               7.915e-06  1.901e-06   4.164    6e-05 ***
    ## observed_N_R               9.966e-05  2.851e-05   3.495 0.000669 ***
    ## observed_N_C:observed_N_R -7.113e-09  1.777e-09  -4.004 0.000110 ***
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## Residual standard error: 0.06141 on 117 degrees of freedom
    ## Multiple R-squared:  0.1562, Adjusted R-squared:  0.1346 
    ## F-statistic:  7.22 on 3 and 117 DF,  p-value: 0.0001733

    ## 
    ## Call:
    ## lm(formula = ssr ~ observed_N_C * observed_N_R, data = reliability_characteristics)
    ## 
    ## Standardized Coefficients::
    ##               (Intercept)              observed_N_C              observed_N_R 
    ##                        NA                 3.2214507                 0.4977375 
    ## observed_N_C:observed_N_R 
    ##                -3.3135224

Another approach would be to consider log-transformed versions of the
three characteristics:

    ## 
    ## Call:
    ## lm(formula = ssr ~ log_N_A * log_N_C * log_N_R, data = .)
    ## 
    ## Residuals:
    ##       Min        1Q    Median        3Q       Max 
    ## -0.169385 -0.031491  0.008151  0.045062  0.091696 
    ## 
    ## Coefficients:
    ##                          Estimate Std. Error t value Pr(>|t|)    
    ## (Intercept)              0.867965   0.221953   3.911 0.000158 ***
    ## log_N_A                 -0.248442   0.137581  -1.806 0.073613 .  
    ## log_N_C                  0.090586   0.076577   1.183 0.239312    
    ## log_N_R                 -0.102389   0.117747  -0.870 0.386379    
    ## log_N_A:log_N_C          0.037977   0.040865   0.929 0.354691    
    ## log_N_A:log_N_R          0.122243   0.069666   1.755 0.082023 .  
    ## log_N_C:log_N_R         -0.002531   0.033219  -0.076 0.939404    
    ## log_N_A:log_N_C:log_N_R -0.020302   0.017119  -1.186 0.238142    
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## Residual standard error: 0.05844 on 113 degrees of freedom
    ## Multiple R-squared:  0.2621, Adjusted R-squared:  0.2164 
    ## F-statistic: 5.734 on 7 and 113 DF,  p-value: 1.08e-05

## What about the suggested thesholds of N_CR\>=20 and NC_R\>=37?

Let’s compare SSR and SHR for these thresholds

![](figs-web/04-analysis-RQ2/unnamed-chunk-47-1.png)<!-- -->

For the case of SSR

    ## # A tibble: 3 × 5
    ##   ncr_level count median   min   max
    ##   <chr>     <int>  <dbl> <dbl> <dbl>
    ## 1 0. low       37  0.911 0.699 0.983
    ## 2 1. medium    22  0.880 0.757 0.982
    ## 3 2. high      62  0.933 0.672 0.994

    ## # A tibble: 1 × 6
    ##   .y.       n statistic    df      p method        
    ## * <chr> <int>     <dbl> <int>  <dbl> <chr>         
    ## 1 ssr     121      7.75     2 0.0208 Kruskal-Wallis

    ## # A tibble: 3 × 9
    ##   .y.   group1    group2       n1    n2 statistic       p  p.adj p.adj.signif
    ## * <chr> <chr>     <chr>     <int> <int>     <dbl>   <dbl>  <dbl> <chr>       
    ## 1 ssr   0. low    1. medium    37    22     -1.31 0.191   0.257  ns          
    ## 2 ssr   0. low    2. high      37    62      1.52 0.128   0.257  ns          
    ## 3 ssr   1. medium 2. high      22    62      2.69 0.00713 0.0214 *

For the case of SHR

    ## # A tibble: 3 × 5
    ##   ncr_level count median   min   max
    ##   <chr>     <int>  <dbl> <dbl> <dbl>
    ## 1 0. low       37  0.732 0.387 0.906
    ## 2 1. medium    22  0.744 0.259 0.911
    ## 3 2. high      62  0.854 0.456 0.985

    ## # A tibble: 1 × 6
    ##   .y.                   n statistic    df        p method        
    ## * <chr>             <int>     <dbl> <int>    <dbl> <chr>         
    ## 1 median_split_corr   121      16.3     2 0.000282 Kruskal-Wallis

    ## # A tibble: 3 × 9
    ##   .y.           group1 group2    n1    n2 statistic       p   p.adj p.adj.signif
    ## * <chr>         <chr>  <chr>  <int> <int>     <dbl>   <dbl>   <dbl> <chr>       
    ## 1 median_split… 0. low 1. me…    37    22     0.269 7.88e-1 7.88e-1 ns          
    ## 2 median_split… 0. low 2. hi…    37    62     3.66  2.50e-4 7.50e-4 ***         
    ## 3 median_split… 1. me… 2. hi…    22    62     2.77  5.55e-3 1.11e-2 *

### Restricting to non-adaptive CJ

![](figs-web/04-analysis-RQ2/unnamed-chunk-51-1.png)<!-- -->

For the case of SSR

    ## # A tibble: 3 × 5
    ##   ncr_level count median   min   max
    ##   <chr>     <int>  <dbl> <dbl> <dbl>
    ## 1 0. low        9  0.802 0.699 0.867
    ## 2 1. medium    18  0.869 0.757 0.947
    ## 3 2. high      57  0.939 0.672 0.994

    ## # A tibble: 1 × 6
    ##   .y.       n statistic    df          p method        
    ## * <chr> <int>     <dbl> <int>      <dbl> <chr>         
    ## 1 ssr      84      26.7     2 0.00000159 Kruskal-Wallis

    ## # A tibble: 3 × 9
    ##   .y.   group1    group2       n1    n2 statistic         p   p.adj p.adj.signif
    ## * <chr> <chr>     <chr>     <int> <int>     <dbl>     <dbl>   <dbl> <chr>       
    ## 1 ssr   0. low    1. medium     9    18      1.81   7.07e-2 7.07e-2 ns          
    ## 2 ssr   0. low    2. high       9    57      4.53   6.04e-6 1.81e-5 ****        
    ## 3 ssr   1. medium 2. high      18    57      3.27   1.06e-3 2.12e-3 **

For the case of SHR

    ## # A tibble: 3 × 5
    ##   ncr_level count median   min   max
    ##   <chr>     <int>  <dbl> <dbl> <dbl>
    ## 1 0. low        9  0.593 0.387 0.724
    ## 2 1. medium    18  0.735 0.259 0.900
    ## 3 2. high      57  0.858 0.456 0.985

    ## # A tibble: 1 × 6
    ##   .y.                   n statistic    df          p method        
    ## * <chr>             <int>     <dbl> <int>      <dbl> <chr>         
    ## 1 median_split_corr    84      24.0     2 0.00000601 Kruskal-Wallis

    ## # A tibble: 3 × 9
    ##   .y.           group1 group2    n1    n2 statistic       p   p.adj p.adj.signif
    ## * <chr>         <chr>  <chr>  <int> <int>     <dbl>   <dbl>   <dbl> <chr>       
    ## 1 median_split… 0. low 1. me…     9    18      1.72 8.57e-2 8.57e-2 ns          
    ## 2 median_split… 0. low 2. hi…     9    57      4.30 1.75e-5 5.24e-5 ****        
    ## 3 median_split… 1. me… 2. hi…    18    57      3.10 1.91e-3 3.82e-3 **

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
    ## -0.238378  -0.035775   0.008844   0.052579   0.086508  
    ## 
    ## Coefficients:
    ##              Estimate Std. Error t value Pr(>|t|)    
    ## (Intercept) 2.1411433  0.0784364  27.298   <2e-16 ***
    ## N_CR        0.0010519  0.0006039   1.742   0.0841 .  
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## (Dispersion parameter for gaussian family taken to be 0.004109175)
    ## 
    ##     Null deviance: 0.52293  on 120  degrees of freedom
    ## Residual deviance: 0.48898  on 119  degrees of freedom
    ## AIC: -317.48
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
    ## -0.25688  -0.03019   0.01060   0.04485   0.08081  
    ## 
    ## Coefficients:
    ##             Estimate Std. Error t value Pr(>|t|)    
    ## (Intercept) 1.700846   0.113777  14.949  < 2e-16 ***
    ## N_CR        0.005035   0.001586   3.174  0.00211 ** 
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## (Dispersion parameter for gaussian family taken to be 0.004221426)
    ## 
    ##     Null deviance: 0.42208  on 83  degrees of freedom
    ## Residual deviance: 0.34599  on 82  degrees of freedom
    ## AIC: -216.96
    ## 
    ## Number of Fisher Scoring iterations: 25
