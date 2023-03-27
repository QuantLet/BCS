[<img src="https://github.com/QuantLet/Styleguide-and-FAQ/blob/master/pictures/banner.png" width="1100" alt="Visit QuantNet">](http://quantlet.de/)

## [<img src="https://github.com/QuantLet/Styleguide-and-FAQ/blob/master/pictures/qloqo.png" alt="Visit QuantNet">](http://quantlet.de/) **BCS_CAmethods** [<img src="https://github.com/QuantLet/Styleguide-and-FAQ/blob/master/pictures/QN2.png" width="60" alt="Visit QuantNet 2.0">](http://quantlet.de/)

```yaml


Name of Quantlet:   'BCS_CAmethods'

Published in:       'Basic Elements of Computational Statistics'

Description:        'Perform a cluster analysis using single, complete and average linkage
                     algorithms on the data set "agriculture" from the package "cluster". 
                     The three resulting dendrograms are plotted to show the divergence in the results.'

Keywords:           'plot, cluster, analysis, average linkage, dendrograms'

Author[New]:         Anastasija Tetereva
 
Submitted:          '2016-01-28, Christoph Schult'


Output:             'Combined plot of three dendrograms of different clustering methods'

```

![Picture1](BCS_CAmethods.png)

### R Code
```r


library("cluster")  # install package for cluster analysis
data("agriculture", package = "cluster")  # load the data
mydata = scale(agriculture)  # normalize the data
d = dist(mydata, method = "euclidean")  # calculate distance matrix
print(d, digits = 2)  # show distance matrix

dev.new()
par(mfrow = c(1, 3))  # draw 3 differents methods in one plot
plot(hclust(d, method = "single"), main = "Single linkage", sub = "", xlab = "", ylab = "Euclidean distance")
plot(hclust(d, method = "complete"), main = "Complete linkage", sub = "", xlab = "", ylab = "Euclidean distance")
plot(hclust(d, method = "average"), main = "Average linkage", sub = "", xlab = "", ylab = "Euclidean distance")
```

automatically created on 2023-03-27