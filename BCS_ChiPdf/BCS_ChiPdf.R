
par(mfrow = c(1, 1))

# random variable 
z = seq(0, 50, length = 300)

# degrees of freedom
m = c(1,2)

# chi-squared distribution with first moment
plot(z, dchisq(z, m[1]), type = 'l', xlab = "z", ylab = "pdf", xlim = c(0,10), xaxs="i", yaxs="i")
# chi-squared distribution with first and second moment
lines(z, dchisq(z, m[2]), col = "blue")
