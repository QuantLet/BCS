[<img src="https://github.com/QuantLet/Styleguide-and-FAQ/blob/master/pictures/banner.png" width="888" alt="Visit QuantNet">](http://quantlet.de/)

## [<img src="https://github.com/QuantLet/Styleguide-and-FAQ/blob/master/pictures/qloqo.png" alt="Visit QuantNet">](http://quantlet.de/) **BCS_Kernel_nhTemp** [<img src="https://github.com/QuantLet/Styleguide-and-FAQ/blob/master/pictures/QN2.png" width="60" alt="Visit QuantNet 2.0">](http://quantlet.de/)

```yaml

Name of Quantlet: BCS_Kernel_nhTemp

Published in: 	  Basic Elements of Computational Statistics

Description:      'PLot the kernel density of New Haven average yearly temperatures.'

Keywords:         kernel, density

Author:           Ostap Okhrin

Submitted:        Ya Qian

```

### R Code
```r

graphics.off() 
#pdf("../BCS_Kernel_nhTemp.pdf", width = 8, height = 8) # save the plot to your file
par(cex = 1.5)
y = density(nhtemp, kernel = "epanechnikov") # density estimation for temperature
plot(y, main = "", lwd = 3)
#dev.off()
```

automatically created on 2018-05-28