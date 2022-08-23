CJ meta-analysis: factors affecting reliability measures
================
George Kinnear
2022-08-22

# About the sample

The judging sessions in the sample span a wide range of number of
judgements made:

![](figs-web/04-factors-affecting-reliability/num-judgements-1.png)<!-- -->
There is also a wide range of numbers of items in the different judging
sessions - from a handful to a maximum of 2150.

![](figs-web/04-factors-affecting-reliability/num-items-1.png)<!-- -->

# Proportion of the comparison matrix that is filled

For a judging session with
![N](https://latex.codecogs.com/png.image?%5Cdpi%7B110%7D&space;%5Cbg_white&space;N "N")
items, there are
![\frac{N(N-1)}{2}](https://latex.codecogs.com/png.image?%5Cdpi%7B110%7D&space;%5Cbg_white&space;%5Cfrac%7BN%28N-1%29%7D%7B2%7D "\frac{N(N-1)}{2}")
possible pairs to judge.

Perhaps a factor that influences reliability is how many of these
possible pairs are actually considered by judges?

Here we compute the number of possible pairs in each judging session,
and compare that with the actual number of pairs that were seen by
judges:

There is a bimodal pattern. Most commonly, all (or nearly all) pairs are
judged. But another common case is for only around 10% of possible pairs
to be judged.

    ## `stat_bin()` using `bins = 30`. Pick better value with `binwidth`.

![](figs-web/04-factors-affecting-reliability/prop-judged-1.png)<!-- -->

The proportion of pairs judged does not seem to have a relationship with
reliability:

    ## Warning: Removed 4 rows containing non-finite values (stat_smooth).

    ## Warning: Removed 4 rows containing missing values (geom_point).

![](figs-web/04-factors-affecting-reliability/propjudged-vs-splithalves-1.png)<!-- -->
