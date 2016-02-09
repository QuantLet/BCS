
[<img src="https://github.com/QuantLet/Styleguide-and-FAQ/blob/master/pictures/banner.png" width="880" alt="Visit QuantNet">](http://quantlet.de/index.php?p=info)

## [<img src="https://github.com/QuantLet/Styleguide-and-Validation-procedure/blob/master/pictures/qloqo.png" alt="Visit QuantNet">](http://quantlet.de/) **BCS_MLRdiagnostic** [<img src="https://github.com/QuantLet/Styleguide-and-Validation-procedure/blob/master/pictures/QN2.png" width="60" alt="Visit QuantNet 2.0">](http://quantlet.de/d3/ia)

```yaml

Name of Quantlet : BCS_MLRdiagnostic

Published in : Basic Elements of Computational Statistics

Description : 'Perform multiple linear regression (MLR) on the dataset "UScereal" from package
"MASS" and construct four diagnostic plots. These show first the residual errors plotted against
their fitted values to check for a distinct trend. The second plot shows spread-location to detect
skewness. The third plot is a QQ plot to check the deviation from the theoretical distribution of
the errors. The fourth plot shows each points leverage.'

Author[New] : Johannes Haupt

Keywords : regression, linear, multiple, diagnostic, residual, skewness, QQ plot

Submitted : 2016-01-28, Christoph Schult

Output : Four combined MLR diagnostic plots.

```

![Picture1](BCS_Mdiagnostic.png)


```r
data(UScereal, package = "MASS")  # load the dataset

fit = lm(calories ~ protein + fat + carbo + sugars, data = UScereal)
# fit the regression model

dev.new()
layout(matrix(c(1, 2, 3, 4), 2.1, 2))  # display 4 graphics in one plot
plot(fit)  # display diagnostic plots 
```
