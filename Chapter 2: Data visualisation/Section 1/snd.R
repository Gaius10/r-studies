library(dslabs)
data(heights)

x = heights$height
# Normal Distribution
nd = (1 / sqrt(2 * pi * sd(x))) * exp((-1/2) * ((x - mean(x)) / sd(x))^2)

y = nd
standard_nd = (1 / sqrt(2 * pi * sd(y))) * exp((-1/2) * ((y - mean(y)) / sd(y))^2)

plot(x, standard_nd, col='red')


points(x, nd, col="blue")



