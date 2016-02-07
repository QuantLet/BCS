par(mfrow = c(1, 2))

# F-distributed variable
z = seq(0, 5, length = 300)
# df for the nominator
n = c(1, 2, 3, 50)
# df for the denominator
m = c(1, 6, 10, 50)

# pdf of z for n=1 & m=1
plot(z, df(z, n[1], m[1]), type = "l", xlab = "z", ylab = "pdf", ylim = c(0, 1.5))
# n=2 & m=6
lines(z, df(z, n[2], m[2]), col = "red")
# n=3 & m=10
lines(z, df(z, n[3], m[3]), col = "green")
# n=50 & m=50
lines(z, df(z, n[4], m[4]), col = "blue")

z = seq(0, 10, length = 300)
# cdf of z with respective df as above
plot(z, pf(z, n[1], m[1]), type = "l", xlab = "z", ylab = "cdf", ylim = c(0, 1))
lines(z, pf(z, n[2], m[2]), col = "red")
lines(z, pf(z, n[3], m[3]), col = "green")
lines(z, pf(z, n[4], m[4]), col = "blue")