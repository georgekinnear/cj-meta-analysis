CJ meta-analysis: RQ1
================
George Kinnear
2023-08-15

# About the sample

    ## # A tibble: 1 × 1
    ##   n_datatsets
    ##         <int>
    ## 1         101

# Judging session characteristics

![](figs-web/04-analysis-RQ1/counts-1.png)<!-- -->![](figs-web/04-analysis-RQ1/counts-2.png)<!-- -->

# Relationship between characteristics

![](figs-web/04-analysis-RQ1/scatter-1.png)<!-- -->

Correlations (Spearman):

    ## Warning in cor.test.default(rq1_data_wide$Assessors,
    ## rq1_data_wide$Comparisons, : Cannot compute exact p-value with ties

    ## 
    ##  Spearman's rank correlation rho
    ## 
    ## data:  rq1_data_wide$Assessors and rq1_data_wide$Comparisons
    ## S = 89220, p-value = 3.701e-07
    ## alternative hypothesis: true rho is not equal to 0
    ## sample estimates:
    ##       rho 
    ## 0.4803719

    ## Warning in cor.test.default(rq1_data_wide$Assessors,
    ## rq1_data_wide$Representations, : Cannot compute exact p-value with ties

    ## 
    ##  Spearman's rank correlation rho
    ## 
    ## data:  rq1_data_wide$Assessors and rq1_data_wide$Representations
    ## S = 194163, p-value = 0.1922
    ## alternative hypothesis: true rho is not equal to 0
    ## sample estimates:
    ##        rho 
    ## -0.1308266

    ## Warning in cor.test.default(rq1_data_wide$Comparisons,
    ## rq1_data_wide$Representations, : Cannot compute exact p-value with ties

    ## 
    ##  Spearman's rank correlation rho
    ## 
    ## data:  rq1_data_wide$Comparisons and rq1_data_wide$Representations
    ## S = 79860, p-value = 8.309e-09
    ## alternative hypothesis: true rho is not equal to 0
    ## sample estimates:
    ##       rho 
    ## 0.5348872

Try some more elaborate methods for computing correlations:

    ## 
    ## Correlation method: 'spearman'
    ## Missing treated using: 'pairwise.complete.obs'

<table class="table table-striped" style="width: auto !important; margin-left: auto; margin-right: auto;">
<thead>
<tr>
<th style="text-align:left;">
term
</th>
<th style="text-align:right;">
Assessors
</th>
<th style="text-align:right;">
Representations
</th>
<th style="text-align:right;">
Comparisons
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">
Assessors
</td>
<td style="text-align:right;">
NA
</td>
<td style="text-align:right;">
-0.1308266
</td>
<td style="text-align:right;">
0.4803719
</td>
</tr>
<tr>
<td style="text-align:left;">
Representations
</td>
<td style="text-align:right;">
-0.1308266
</td>
<td style="text-align:right;">
NA
</td>
<td style="text-align:right;">
0.5348872
</td>
</tr>
<tr>
<td style="text-align:left;">
Comparisons
</td>
<td style="text-align:right;">
0.4803719
</td>
<td style="text-align:right;">
0.5348872
</td>
<td style="text-align:right;">
NA
</td>
</tr>
</tbody>
</table>

This plot shows only the significant correlations:

    ## Warning in cor.test.default(x = mat[, i], y = mat[, j], ...): Cannot compute
    ## exact p-value with ties

    ## Warning in cor.test.default(x = mat[, i], y = mat[, j], ...): Cannot compute
    ## exact p-value with ties

    ## Warning in cor.test.default(x = mat[, i], y = mat[, j], ...): Cannot compute
    ## exact p-value with ties

![](figs-web/04-analysis-RQ1/corrplot-1.png)<!-- -->

# Derived characteristics

Now we look at ratios of the session characteristics.

![](figs-web/04-analysis-RQ1/derived-counts-1.png)<!-- -->![](figs-web/04-analysis-RQ1/derived-counts-2.png)<!-- -->
