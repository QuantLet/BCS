# setting up the axis label size and margin (bottom, left, top, right)
par(cex.lab = 1.2, cex.main = 1.6, mar = c(5.5, 4.5, 4, 2) + 0.1, mgp = c(2.7, 1, 0), mfrow = c(2, 2), cex.main = (1.5))

# Plot the Poisson distribution for sample size 10 and different lambdas
n = 10
x = 0:n
lambda = 0.5

prob = dpois(x, lambda)
plot(x, prob, type = "h", main = expression(paste(lambda, " = 0.5")))

# 2nd plot
n = 10
x = 0:n
lambda = 2.5

prob = dpois(x, lambda)
plot(x, prob, type = "h", main = expression(paste(lambda, " = 2.5")))

# 3rd plot
n = 10
x = 0:n
lambda = 5

prob = dpois(x, lambda)
plot(x, prob, type = "h", main = expression(paste(lambda, " = 5")))

# 4th: Plot the Poisson distribution for sample size 50
n = 50
x = 0:n
lambda = 25

prob = dpois(x, lambda)
plot(x, prob, type = "h", main = expression(paste(lambda, " = 25"))) 
 TRUE