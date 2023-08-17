library(tidyverse)
library(rstan)

verhavert_data <-
  read_delim(
    "https://zenodo.org/record/2586084/files/Assessment_characterisitcs_data.csv?download=1",
    delim = ";",
    locale = locale(decimal_mark = ","),
    show_col_types = FALSE
  )

kinnear_data <-
  read_csv("data/01-meta-analysis-data.csv", show_col_types = FALSE) %>%
  left_join(
    read_csv("data/00-judging_sessions_summary.csv", show_col_types = FALSE),
    join_by(judging_session)
  ) %>%
  mutate(N_CR = observed_N_C / observed_N_R * 2) %>%
  select(judging_session, adaptivity, N_CR, SSR = ssr)

Data_reliab <- bind_rows(
  "Verhavert" = verhavert_data %>%
    transmute(judging_session = paste(Assessment, `Assessor group`), N_CR, SSR),
  "Kinnear" = kinnear_data %>% filter(adaptivity == FALSE),
  .id = "study"
) %>% 
  mutate(N_CR_RC = N_CR - mean(N_CR))


# This is adapted code from https://zenodo.org/record/2586084
# to replicate Figure 4 from Verhavert et al. (2019)


## We want to fit the following model
##  SSR ~ 1 + N[CR]
M1 <- '
data{
  int<lower = 0> N;  //number of observations
  vector<lower = 0, upper = 1>[N] SSR;  //predicted
  vector[N] N_CR;

  //for prediction
  int<lower = 0> Npred;  //number of values to predict
  vector[Npred] N_CR_pred;
}
parameters{
  real<lower = 0> sig;  //sd of normal dist
  real beta0;  //intercept
  real beta_N_CR;  //regression parameter
}
transformed parameters{
  vector[N] mu;  //mean of normal dist

  for( n in 1:N ){
    mu[n] = inv_logit( beta0 + beta_N_CR * N_CR[n] );
  }
}
model{
  SSR ~ normal( mu, sig );
  beta_N_CR ~ normal( 0, 100 );
  beta0 ~ normal( 0, 100 );
}
generated quantities {
  // predict
  vector<lower = 0, upper = 1>[Npred] SSR_Pred;

  for( n in 1:Npred ){
    SSR_Pred[n] = inv_logit( beta0 + beta_N_CR * N_CR_pred[n] );
  }
}
'

## Input data list
N_CR_range <- c( 0 - mean( Data_reliab$N_CR ),
                 70 - mean( Data_reliab$N_CR ) )

N_CR_seq <- seq( from = N_CR_range[1], to = N_CR_range[2], length.out = 300 )

DatLst <- list( N = nrow(Data_reliab),
                SSR = Data_reliab$SSR,
                N_CR = Data_reliab$N_CR_RC,
                Npred = 300,
                N_CR_pred = N_CR_seq
)

## fit and evaluate ## ----
Fit1 <- stan( model_code = M1, data = DatLst, warmup = 1000, iter = 11000,
              thin = 1 )

pairs( Fit1, pars = c( "sig", "beta0", "beta_N_CR" ) )

stan_trace( Fit1, pars = c( "mu", "sig", "beta0", "beta_N_CR" ) )

stan_ac( Fit1, pars = c( "mu", "sig", "beta0", "beta_N_CR" )  )

graphics.off()

## plot and calculate estimates ## ----
post_samples <- as.data.frame( Fit1, pars = c( "beta0", "beta_N_CR" ) )

par( mfrow = c( 1, 2 ))

plot( density( post_samples$beta0, bw = .1  ) )
plot( density( post_samples$beta_N_CR, bw = .1  ) )

graphics.off()

summary( Fit1, pars = c( "beta0", "beta_N_CR" ) )$summary

hdi(post_samples)

## Predict ## ----
postpred_samples <- as.data.frame( Fit1, pars = c( "SSR_Pred" ) )

Mpostpred <- apply( postpred_samples, MARGIN = 2, FUN = "median" )
SDpostPred <- apply( postpred_samples, MARGIN = 2, FUN = "sd" )
uncertainU <- Mpostpred + ( 2 * SDpostPred )
uncertainL <- Mpostpred - (2 * SDpostPred )

uncertainL <- ifelse( uncertainL < 0, 0, uncertainL )
uncertainU <- ifelse( uncertainU > 1, 1, uncertainU )

L.70 <- which.min( abs( uncertainL - .70 ) )
U.70 <- which.min( abs( uncertainU - .70 ) )
L.80 <- which.min( abs( uncertainL - .80 ) )
U.80 <- which.min( abs( uncertainU - .80 ) )
L.90 <- which.min( abs( uncertainL - .90 ) )
U.90 <- which.min( abs( uncertainU - .90 ) )

# Figure 4
tiff( file = "Figure4.tiff",
      width = 12, height = 10, units = "cm", res = 300,
      pointsize = 10, compression = "lzw" )

par( mar = c( 5, 4, 2, 5 ) )

plot( 0, 0, type = "l", xlab = expression( N[CR] ), ylab = "SSR",
      xlim = c( 0, 60 ), ylim = c( .5, 1 ) )
polygon( x = c( N_CR_seq + mean( Data_reliab$N_CR ),
                rev( N_CR_seq + mean( Data_reliab$N_CR ) )
),
y = c( uncertainU, rev(  uncertainL ) ),
col = "grey" )
points( Data_reliab$N_CR,
        Data_reliab$SSR,
        pch = 1 )
lines( N_CR_seq + mean( Data_reliab$N_CR ), Mpostpred )
abline( h = .70 )
abline( h = .90 )
segments( x0 = ( N_CR_seq + mean( Data_reliab$N_CR ) )[ L.70 ],
          y0 = .4, y1 = .70, lty = 2 )
segments( x0 = ( N_CR_seq + mean( Data_reliab$N_CR ) )[ U.70 ],
          y0 = .4, y1 = .70, lty = 2 )
segments( x0 = ( N_CR_seq + mean( Data_reliab$N_CR ) )[ L.90 ],
          y0 = .4, y1 = .90, lty = "14" )
segments( x0 = ( N_CR_seq + mean( Data_reliab$N_CR ) )[ U.90 ],
          y0 = .4, y1 = .90, lty = "14" )

par( xpd = T )
legend( 42.5, 1, legend = c( "expert", "peer", "novice" ), pch = c( 1, 0, 2 ) )

graphics.off()

( N_CR_seq + mean( Data_reliab$N_CR ) )[ L.70 ]
( N_CR_seq + mean( Data_reliab$N_CR ) )[ U.70 ]
( N_CR_seq + mean( Data_reliab$N_CR ) )[ L.80 ]
( N_CR_seq + mean( Data_reliab$N_CR ) )[ U.80 ]
( N_CR_seq + mean( Data_reliab$N_CR ) )[ L.90 ]
( N_CR_seq + mean( Data_reliab$N_CR ) )[ U.90 ]



# Redoing with ideas from http://mjskay.github.io/tidybayes/articles/tidy-posterior.html

library(brms)
library(tidybayes)
library(modelr)

regression_ssr = brm(
  SSR ~ 1 + N_CR, 
  data = Data_reliab %>% filter(N_CR < 100), 
  file = "data-cache/tidy-brms_regression_ssr.rds"  # cache model (can be removed)
)

Data_reliab %>% 
  filter(N_CR < 100) %>% 
  data_grid(N_CR = seq_range(N_CR, n = 51)) %>%
  add_epred_rvars(regression_ssr) %>%
  ggplot(aes(x = N_CR)) +
  stat_lineribbon(aes(ydist = .epred)) +
  geom_point(aes(y = SSR, colour = study), data = Data_reliab %>% filter(N_CR < 100)) +
  scale_fill_brewer(palette = "Blues")

Data_reliab %>% 
  filter(N_CR < 100) %>%
  data_grid(N_CR = seq_range(N_CR, n = 20)) %>%
  add_predicted_rvars(regression_ssr) %>%
  ggplot(aes(x = N_CR)) +
  stat_lineribbon(aes(ydist = .prediction), .width = c(.95, .80, .50), alpha = 1/4) +
  geom_point(aes(y = SSR, colour = study, shape = study), data = Data_reliab %>% filter(N_CR < 100)) +
  scale_fill_brewer(palette = "Blues") +
  theme_minimal()


# Perhaps it would be nice to predict SSR of *at least* a certain threshold

thresholds_data <- Data_reliab %>% 
  mutate(SSR_level = ordered(floor(10*SSR)/10)) %>% 
  filter(N_CR < 100)

m_ssr_ord = brm(
  SSR_level ~ N_CR, 
  data = thresholds_data, 
  family = cumulative,
  seed = 58393,
  
  file = "data-cache/tidy-brms_m_ssr_ord.rds"  # cache model (can be removed)
)

data_plot = thresholds_data %>%
  ggplot(aes(x = N_CR, y = SSR_level, color = SSR_level)) +
  geom_point() +
  scale_color_brewer(palette = "Dark2", name = "SSR_level") +
  theme_minimal()

fit_plot = thresholds_data %>%
  data_grid(N_CR = seq_range(N_CR, n = 101)) %>%
  add_epred_rvars(m_ssr_ord, value = "P(SSR_level | N_CR)", columns_to = "SSR_level") %>%
  ggplot(aes(x = N_CR, color = SSR_level)) +
  stat_lineribbon(aes(ydist = `P(SSR_level | N_CR)`, fill = SSR_level), alpha = 1/5) +
  scale_color_brewer(palette = "Dark2") +
  scale_fill_brewer(palette = "Dark2") +
  labs(y = "P(SSR_level | N_CR)") +
  theme_minimal()

cowplot::plot_grid(ncol = 1, align = "v",
          data_plot,
          fit_plot
)
