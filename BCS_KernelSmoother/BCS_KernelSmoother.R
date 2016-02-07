graphics.off()
require(datasets)
# define log-returns
r.dax = diff(log(EuStockMarkets[, 1]))  # daily DAX log-returns
r.ftse = diff(log(EuStockMarkets[, 4]))  # daily FTSE log-returns

# uniform kernel regression
r.dax.hat = ksmooth(x = r.ftse, y = r.dax, kernel = "box", bandwidth = 0.001)  # and bandwidth equal to 0.001

# Plot for the regression line and data points
par(cex.axis = 1.5, cex.lab = 1.5, pch = 19, cex = 1)
plot(r.ftse, r.dax, xlim = c(-0.06, 0.06), ylim = c(-0.06, 0.06), xlab = "FTSE log-returns", ylab = "DAX log-returns", 
    col = rgb(0.1, 0.8, 0.9, alpha = 0.7))
lines(r.dax.hat, col = "red", lwd = 2)