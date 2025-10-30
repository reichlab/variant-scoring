## generate examples for scoring explanations

## Figure for binomial  N=2, with 100 samples from a beta centered at 0.75

theta_samps <- rbeta(100, shape1 = 30, shape2 = 10)
p_samps_2 <- rbinom(10000, size = 2, prob = rep(theta_samps, each = 100)) / 2

p_samps_10 <- rbinom(10000, size = 10, prob = rep(theta_samps, each = 100)) /
  10

p_samps_100 <- rbinom(10000, size = 100, prob = rep(theta_samps, each = 100)) /
  100

par(mfrow = c(4, 1), mar = c(2, 3, 1, 1))
hist(theta_samps, xlim = c(0, 1), main = NULL)
hist(p_samps_2, xlim = c(0, 1), main = NULL)
hist(p_samps_10, xlim = c(0, 1), main = NULL)
hist(p_samps_100, xlim = c(0, 1), main = NULL)
