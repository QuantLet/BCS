# make sure both packages are installed

library(stabledist)
library(fBasics)
par(mfrow = c(2, 2))
z = seq(-6, 6, length = 300)

# thickness of tails
alpha = c(0.6, 1, 1.5, 2)
# skewness
beta = 0
# standard deviation
sigma = 1
# expectation
mu = 0

# stable pdfs for different tails (left side)
plot(z, dstable(z, alpha[1], beta, sigma, mu, 1), type = "l", xlim = c(-5, 5), ylim = c(0, 0.5), xlab = "z", ylab = "pdf")
lines(z, dstable(z, alpha[2], beta, sigma, mu, 1), col = "red")
lines(z, dstable(z, alpha[3], beta, sigma, mu, 1), col = "green")
lines(z, dstable(z, alpha[4], beta, sigma, mu, 1), col = "blue")


alpha = 1
beta = c(0, -0.8, 0.8)

# differently skewed stable pdfs (right side)
plot(z, dstable(z, alpha, beta[1], sigma, mu, 1), col = "red", type = "l", xlim = c(-5, 5), ylim = c(0, 0.35), xlab = "z", 
    ylab = "pdf")
lines(z, dstable(z, alpha, beta[2], sigma, mu, 1), col = "green")
lines(z, dstable(z, alpha, beta[3], sigma, mu, 1), col = "blue")




z = seq(-6, 6, length = 300)

alpha = c(0.6, 1, 1.5, 2)
beta = 0

# stable cdfs for different tails (left side)
plot(z, pstable(z, alpha[1], beta, sigma, mu, 1), type = "l", xlim = c(-5, 5), ylim = c(0, 1), xlab = "z", ylab = "cdf")
lines(z, pstable(z, alpha[2], beta, sigma, mu, 1), col = "red")
lines(z, pstable(z, alpha[3], beta, sigma, mu, 1), col = "green")
lines(z, pstable(z, alpha[4], beta, sigma, mu, 1), col = "blue")



alpha = 1
beta = c(0, -0.8, 0.8)

# differently skewed stable cdfs (right side)
plot(z, pstable(z, alpha, beta[1], sigma, mu, 1), col = "red", type = "l", xlim = c(-5, 5), ylim = c(0, 1), xlab = "z", 
    ylab = "cdf")
lines(z, pstable(z, alpha, beta[2], sigma, mu, 1), col = "green")
lines(z, pstable(z, alpha, beta[3], sigma, mu, 1), col = "blue") 
 TRUE