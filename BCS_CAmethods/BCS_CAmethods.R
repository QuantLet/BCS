
library("cluster") # install package for cluster analysis
data("agriculture", package = "cluster") # load the data
mydata = scale(agriculture) # normalize the data
d = dist(mydata, method = "euclidean") # calculate distance matrix
print(d, digits = 2) # show distance matrix

dev.new()
par(mfrow = c(1,3)) # draw 3 differents methods in one plot
plot(hclust(d, method = "single"), main = "Single linkage", sub="", xlab="", ylab = "Euclidean distance")
plot(hclust(d, method = "complete"), main = "Complete linkage", sub="", xlab="", ylab = "Euclidean distance")
plot(hclust(d, method = "average"), main = "Average linkage", sub="", xlab="", ylab = "Euclidean distance")

