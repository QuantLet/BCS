par(mfrow = c(1, 2))

z = seq(-6, 6, length = 300)

# mu and sigma are 1 and 0 Gaussian
n = c(2, 0, 1, 0)
# Cauchy
ch = c(1, 0, 1, 0)
# Levy
l = c(0.5, 0.9999, 1, 0)

# Gaussian pdf
plot(z, dstable(z, n[1], n[2], n[3], n[4], 1), col = "red", type = "l", xlim = c(-5, 5), ylim = c(0, 0.5), xlab = "z", 
    ylab = "pdf")
# Cauchy pdf
lines(z, dstable(z, ch[1], ch[2], ch[3], ch[4], 1), col = "green")
# Levy pdf
lines(z, dstable(z, l[1], l[2], l[3], l[4], 1), col = "blue")

# Gaussian cdf
plot(z, pstable(z, n[1], n[2], n[3], n[4], 1), col = "red", type = "l", xlim = c(-5, 5), ylim = c(0, 1), xlab = "z", 
    ylab = "cdf")
# Cauchy cdf
lines(z, pstable(z, ch[1], ch[2], ch[3], ch[4], 1), col = "green")
# Levy cdf
lines(z, pstable(z, l[1], l[2], l[3], l[4], 1), col = "blue") 
 TRUE