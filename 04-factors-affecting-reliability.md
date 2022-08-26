CJ meta-analysis: factors affecting reliability measures
================
George Kinnear
2022-08-22

# About the sample

The judging sessions in the sample span a wide range of number of
judgements made:

![](figs-web/04-factors-affecting-reliability/num-judgements-1.png)<!-- -->

Similarly, the number of judges in each session varies a lot:

![](figs-web/04-factors-affecting-reliability/num-judges-1.png)<!-- -->

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

We compute the number of possible pairs in each judging session, and
compare that with the actual number of pairs that were seen by judges.

There is a bimodal pattern. Most commonly, all (or nearly all) pairs are
judged. But another common case is for only around 10% of possible pairs
to be judged.

![](figs-web/04-factors-affecting-reliability/prop-judged-1.png)<!-- -->

The proportion of pairs judged does not seem to have a relationship with
reliability:

![](figs-web/04-factors-affecting-reliability/propjudged-vs-splithalves-1.png)<!-- -->

# Number of comparisons per representation

This is considered important by Verhavert (2019).

But an initial look at our data suggest it’s not so closely linked to
split-halves:

    ## Warning: Removed 8 rows containing non-finite values (stat_smooth).

    ## Warning: Removed 8 rows containing missing values (geom_point).

![](figs-web/04-factors-affecting-reliability/ncr-splithalves-1.png)<!-- -->

Same with SSR:

    ## Warning: Removed 8 rows containing non-finite values (stat_smooth).

    ## Warning: Removed 8 rows containing missing values (geom_point).

![](figs-web/04-factors-affecting-reliability/ncr-ssr-1.png)<!-- -->

Unlike the Verhavert (2019) sample, we seem to have many judging
sessions with low N_CR yet high reliability.

## Adaptivity

All the examples with
![N\_{CR} \> 100](https://latex.codecogs.com/png.image?%5Cdpi%7B110%7D&space;%5Cbg_white&space;N_%7BCR%7D%20%3E%20100 "N_{CR} > 100")
are not adaptive, so we focus the plot on
![N\_{CR} \< 100](https://latex.codecogs.com/png.image?%5Cdpi%7B110%7D&space;%5Cbg_white&space;N_%7BCR%7D%20%3C%20100 "N_{CR} < 100")
to see the details better.

Observations:

1.  the adaptive ones tend to have lower N_CR and are among the higher
    split-halves for a given N_CR level.

2.  the “unknown” ones look quite similar to the adaptive ones, so
    chances are they were adaptive too?

<!-- -->

    ## Warning: Removed 13 rows containing missing values (geom_point).

![](figs-web/04-factors-affecting-reliability/ncr-splithalves-adaptivity-1.png)<!-- -->

## Judge expertise

Of the judging sessions with
![N\_{CR} \>100](https://latex.codecogs.com/png.image?%5Cdpi%7B110%7D&space;%5Cbg_white&space;N_%7BCR%7D%20%3E100 "N_{CR} >100"),
all but one (Esen2019) have layperson judges.

    ## Warning: Removed 13 rows containing missing values (geom_point).

![](figs-web/04-factors-affecting-reliability/ncr-splithalves-expertise-1.png)<!-- -->

## Number of judges

The number of judges varies over quite a large range, so to colour the
points we use
![\log_2(N_A)](https://latex.codecogs.com/png.image?%5Cdpi%7B110%7D&space;%5Cbg_white&space;%5Clog_2%28N_A%29 "\log_2(N_A)"),
so the colours correspond to the nearest power of 2.

![](figs-web/04-factors-affecting-reliability/ncr-splithalves-judges-1.png)<!-- -->

Here we zoom in on
![N\_{CR}\<100](https://latex.codecogs.com/png.image?%5Cdpi%7B110%7D&space;%5Cbg_white&space;N_%7BCR%7D%3C100 "N_{CR}<100"):

![](figs-web/04-factors-affecting-reliability/ncr-splithalves-judges-zoom-1.png)<!-- -->
