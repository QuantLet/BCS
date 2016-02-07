par(mfrow = c(1, 2))
# t distributed variable
t = seq(-5, 5, length = 300)
df = c(1, 2, 5)  # degrees of freedom(df) for the t-distribution

# standard normal pdf (reference function)
plot(t, dnorm(t, 0, 1), xlab = "t", ylab = "pdf", type = "l", lwd = 2)
# df=1
lines(t, dt(t, df[1]), col = "red")
# df=2
lines(t, dt(t, df[2]), col = "green")
# df=5
lines(t, dt(t, df[3]), col = "blue")

# different range needed to illustrate the differences
t = seq(-10, 10, length = 300)
# cdf of normal
plot(t, pnorm(t, 0, 1), xlab = "z", ylab = "cdf", type = "l", lwd = 2)
# order of df as above
lines(t, pt(t, df[1]), col = "red")
lines(t, pt(t, df[2]), col = "green")
lines(t, pt(t, df[3]), col = "blue") 
 TRUE