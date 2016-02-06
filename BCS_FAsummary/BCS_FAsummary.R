require(FactoMineR)
data("decathlon", package = "FactoMineR")
mydata = decathlon[, 1:10]  # choose relevant variables
fit = princomp(mydata)  # perform PCA
# plot cum. percentage of var. explained by number of components
plot(cumsum(fit$sdev^2/sum(fit$sdev^2)), xlab = "Number of principal components", ylab = "Cumulative percentage variance") 