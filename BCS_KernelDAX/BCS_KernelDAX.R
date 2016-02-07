graphics.off()  # reset previous graphical settings
require(datasets)  # load required dataset 
r.dax = diff(log(EuStockMarkets[, 1]))  # define the log retunrs for the DAX index

par(mar = par()$mar + c(0, 1.5, -1, 0.1), cex = 1.5, cex.lab = 1.5, lwd = 2)
y = density(r.dax, kernel = "epanechnikov")  # density estimation for DAX log-returns
plot(y, xlim = c(-0.05, 0.05), col = rgb(0.1, 0.8, 0.9, alpha = 0.7), main = "")
 
 TRUE