[<img src="https://github.com/QuantLet/Styleguide-and-FAQ/blob/master/pictures/banner.png" width="1100" alt="Visit QuantNet">](http://quantlet.de/)

## [<img src="https://github.com/QuantLet/Styleguide-and-FAQ/blob/master/pictures/qloqo.png" alt="Visit QuantNet">](http://quantlet.de/) **BCS_isoMDS** [<img src="https://github.com/QuantLet/Styleguide-and-FAQ/blob/master/pictures/QN2.png" width="60" alt="Visit QuantNet 2.0">](http://quantlet.de/)

```yaml


Name of Quantlet:                 'BCS_isoMDS'

Published in:                     'Basic Elements of Computational Statistics'
 
Description:                      'Example of non-metric Multidimensional Scaling (MDS) on the
                                   data "voting" from package "HSAUR2". This approach is useful
                                   for a number of negative eigenvalues and ordinal data.'

Keywords:                         'non-metric, multidimensional, scaling, plot, HSAUR2,
                                   eigenvalues, ordinal data'

Author[New]:                       Anastasija Tetereva

Submitted:                        '2016-01-28, Christoph Schult'

Output:                           'Plot of MDS with column-names added.'

```

![Picture1](BCS_isoMDS.png)

### R Code
```r


install.packages("HSAUR2")  # load package to get the data
data("voting", package = "HSAUR2")  # load the data
library("MASS")  # load package for nonmetric MDS
fit = isoMDS(voting)  # fit nonmetric MDS model

plot(fit$points[, 1], fit$points[, 2], xlab = "x", ylab = "y", type = "n", main = "")  # plot the model
segments(-10, -0, 10, 0, lty = "dotted")  # horizontal line
segments(0, -10, 0, 10, lty = "dotted")  # vertical line
text(fit$points[, 1], fit$points[, 2], rownames(voting), cex = 0.8)  # add text to the plot
```

automatically created on 2023-03-28