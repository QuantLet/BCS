
library("cluster") # load package for cluster analysis
data("agriculture", package = "cluster") # load the data
mydata = scale(agriculture) # normalize the data
d = dist(mydata, method = "euclidean") # calculate distance matrix
print(d, digits = 2) # show distance matrix
fit = hclust(d, method = "ward") # fit the model

dev.new()
plot(fit, main = "",, sub="", xlab="", ylab ="Euclidean distance") # plot the solution
groups = cutree(fit, k = 5) # define clusters
rect.hclust(fit, k = 5, border = "red") # draw boxes


