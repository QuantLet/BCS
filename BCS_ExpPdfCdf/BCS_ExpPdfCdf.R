par(mfrow = c(1, 2))
z = seq(0, 5, length = 300)

# different parameter values
lambda = c(0.3, 0.5, 1, 3)

# exponential pdf for lambda = 0.3
plot(z, dexp(z, lambda[1]), type = "l", xlab = "z", ylab = "pdf", ylim = c(0, 1))
# lambda = 0.5
lines(z, dexp(z, lambda[2]), col = "red")
# lambda = 1
lines(z, dexp(z, lambda[3]), col = "green")
# lambda = 3
lines(z, dexp(z, lambda[4]), col = "blue")

# exponential cdf same order for lambdas as above
plot(z, pexp(z, lambda[1]), type = "l", xlab = "z", ylab = "cdf", ylim = c(0, 1))
lines(z, pexp(z, lambda[2]), col = "red")
lines(z, pexp(z, lambda[3]), col = "green")
lines(z, pexp(z, lambda[4]), col = "blue")