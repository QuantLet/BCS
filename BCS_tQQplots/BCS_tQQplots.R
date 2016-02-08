par(mfrow = c(1, 2))

# create random sample which is t-distributed
x = rt(100, df = 3)
# quantiles of t with 3 degrees of freedom
qqnorm(x, col = "red", pch = 20, asp = 1)
# line of perfect fit
qqline(x)

# create random sample which is t-distributed
y = rt(100, df = 100)
# quantiles of t with 100 degrees of freedom
qqnorm(y, col = "red", pch = 20, asp = 1)
# line of perfect fit
qqline(y)
