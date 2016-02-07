# creating values a as a sequence from -3 to 3
a = seq(from = -3, to = 3, by = 0.01)
# calculating the densities of these values given the default mean=0 sd=1 normal distribution
b = dnorm(a)


# margins (bottom,left,top,right) , font style, axis label size
par(mai = c(b = 0.5, l = 0.5, t = 0.5, r = 0.5), font = 4, cex.axis = 1.5)
# axis numeration switched off, line width=2
plot(x = a, y = b, type = "l", ylab = "", xlab = "", axes = F, lwd = "2")
# 2 horizontal lines
abline(h = 0)
abline(v = -1.5, lty = 2)
# create and label x-axis
axis(1, at = -1.5, labels = expression(z[alpha]))
# Filling LEFT
polygon(x = c(-1.5, a[1:151]), y = c(0, 0, b[2:151]), col = "gray94")
# write alpha in the area of interest
text(-1.8, 0.03, expression(alpha), cex = 1.2)