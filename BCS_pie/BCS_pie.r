# margins (bottom, left, top, right)
par(mai = c(b = 0.01, l = 1, t = 0.01, r = 0.9))

# Pie-Chart with axis text size=1.8
pie(table(chickwts$feed), cex = 1.8)