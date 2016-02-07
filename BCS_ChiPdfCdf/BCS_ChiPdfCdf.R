par(mfrow = c(1, 2))

# rv for the chi-squared distribution
z = seq(0, 50, length = 300)

# degrees of freedom
df = c(5, 10, 15, 25)

# pdf of chi-squared
plot(z, dchisq(z, df[1]), type = "l", xlab = "z", ylab = "pdf")
# pdf for df=10
lines(z, dchisq(z, df[2]), col = "red")
# pdf for df=15
lines(z, dchisq(z, df[3]), col = "green")
# pdf for df=25
lines(z, dchisq(z, df[4]), col = "blue")

# order of df as above cdf of chi-squared
plot(z, pchisq(z, df[1]), type = "l", xlab = "z", ylab = "cdf")
lines(z, pchisq(z, df[2]), col = "red")
lines(z, pchisq(z, df[3]), col = "green")
lines(z, pchisq(z, df[4]), col = "blue")