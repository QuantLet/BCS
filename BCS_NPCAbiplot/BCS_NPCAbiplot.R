require(mclust)
data(banknote, package = "mclust")  # load the data
mydata = banknote[, -1]  # remove the last column indicating genuine/not genuine
fit = princomp(mydata, cor = TRUE)  # fit normalized PCA model

dev.new()
ucircle = cbind(cos((0:360)/180 * pi), sin((0:360)/180 * pi))

plot(ucircle, type = "l", lty = "solid", xlab = "First PC", ylab = "Second PC", cex.lab = 1.5, cex.axis = 1, cex.main = 1, 
    lwd = 2)
abline(h = 0, v = 0)
label = c("X1", "X2", "X3", "X4", "X5", "X6")
text(cor(mydata, fit$scores), label, cex = 1.5)
text(cor(mydata, fit$scores), label, cex = 1.5)
 
 TRUE