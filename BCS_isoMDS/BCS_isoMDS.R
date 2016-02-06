
install.packages("HSAUR2") # load package to get the data
data("voting", package = "HSAUR2") # load the data
library("MASS") # load package for nonmetric MDS
fit = isoMDS(voting) # fit nonmetric MDS model

plot(fit$points [,1], fit$points [,2], xlab="x", ylab="y", type="n",main="") # plot the model
segments(-10, -0, 10, 0, lty="dotted") # horizontal line
segments(0, -10, 0, 10, lty="dotted") # vertical line
text(fit$points [,1], fit$points [,2], rownames(voting), cex=0.8) # add text to the plot
