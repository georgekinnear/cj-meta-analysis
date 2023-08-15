CJ meta-analysis: RQ2
================
George Kinnear
2023-08-15

# About the sample

    ## # A tibble: 1 × 1
    ##   n_datatsets
    ##         <int>
    ## 1         101

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

![](figs-web/04-analysis-RQ2/unnamed-chunk-2-1.png)<!-- -->

## Relationship between observed measures

![](figs-web/04-analysis-RQ2/scatter-1.png)<!-- -->

# Effect of N_CR on reliability measures

> TODO - decide which thresholds to use

![](figs-web/04-analysis-RQ2/unnamed-chunk-3-1.png)<!-- -->

![](figs-web/04-analysis-RQ2/unnamed-chunk-4-1.png)<!-- -->

    ## # A tibble: 12 × 5
    ##    ncr   measure                        min median   max
    ##    <fct> <fct>                        <dbl>  <dbl> <dbl>
    ##  1 all   Scale Separation Reliability 0.513  0.899 0.994
    ##  2 all   Split-halves reliability     0.259  0.785 0.985
    ##  3 all   Correct comparisons          0.561  0.775 0.956
    ##  4 10+   Scale Separation Reliability 0.513  0.899 0.994
    ##  5 10+   Split-halves reliability     0.259  0.797 0.985
    ##  6 10+   Correct comparisons          0.561  0.750 0.943
    ##  7 20+   Scale Separation Reliability 0.513  0.927 0.994
    ##  8 20+   Split-halves reliability     0.456  0.860 0.985
    ##  9 20+   Correct comparisons          0.561  0.701 0.943
    ## 10 34+   Scale Separation Reliability 0.513  0.946 0.994
    ## 11 34+   Split-halves reliability     0.505  0.896 0.985
    ## 12 34+   Correct comparisons          0.561  0.683 0.943

# Relationships between reliability measures

> TODO - single scatter plot version of Figure 6
