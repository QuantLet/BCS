
[<img src="https://github.com/QuantLet/Styleguide-and-FAQ/blob/master/pictures/banner.png" width="888" alt="Visit QuantNet">](http://quantlet.de/)

## [<img src="https://github.com/QuantLet/Styleguide-and-FAQ/blob/master/pictures/qloqo.png" alt="Visit QuantNet">](http://quantlet.de/) **BCS_Boxplot** [<img src="https://github.com/QuantLet/Styleguide-and-FAQ/blob/master/pictures/QN2.png" width="60" alt="Visit QuantNet 2.0">](http://quantlet.de/)

```yaml

Name of Quantlet : BCS_Boxplot

Published in : Basic Elements of Computational Statistics

Description : 'Box-Plot of the dataset nhtemp. The notation on the axes is calculated manually,
giving a nice example of the calcuation of a five number summary, on which the box-plot is based.
Note that R by default draws the whiskers to the highest/lowest value in the sample which is still
in the upper-/lower fence.'

Keywords : whiskers, outlier detection, graphical representation, histogram, boxplot

Author[New] : Gunawan

Submitted : 2016-01-28, Christoph Schult

Output : Box-plot of nhtemp in .pdf format.

```

![Picture1](BCS_Boxplot.png)


### R Code:
```r
# margins (bottom, left, top, right)
par(mai = c(b = 0.01, l = 1e-04, t = 0.01, r = 0.1))
# Box-plot located at x=0.8 without frame, with default 1.5 range and outliers
boxplot(nhtemp, at = 0.8, frame = F, range = 1.5, outline = T, yaxt = "n", ylim = c(48, 55))

# Add a y axis
axis(2, pos = 0.5, col.axis = "black", las = 0)

# compute the quartiles and lower&upper fence
lowq = quantile(nhtemp, probs = 0.25)
median = quantile(nhtemp, probs = 0.5)
uppq = quantile(nhtemp, probs = 0.75)
lowerfence = lowq - 1.5 * (diff(quantile(nhtemp, probs = c(0.25, 0.75))))
upperfence = uppq + 1.5 * (diff(quantile(nhtemp, probs = c(0.25, 0.75))))
# Compute the endpoint of each whisker, e.g. the max/min value still within the upper/lower-fence
lowerwhisker = min(nhtemp[nhtemp > lowerfence])
upperwhisker = max(nhtemp[nhtemp < upperfence])

# write description in the Box-Plot
text(1.2, lowq, expression("lower quartile: x"[0.25]), font = 2)
text(1.2, median, expression("median: med x"), font = 2)
text(1.2, uppq, expression("upper quartile: x"[0.75]), font = 2)
text(1.2, upperwhisker, "upper whisker", font = 1)
text(1.2, lowerwhisker, "lower whisker", font = 1)
```
