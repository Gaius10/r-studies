library(dslabs)
data(heights)

a = heights$height

plot(a, pnorm(a))