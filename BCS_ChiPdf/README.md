[<img src="https://github.com/QuantLet/Styleguide-and-FAQ/blob/master/pictures/banner.png" width="1100" alt="Visit QuantNet">](http://quantlet.de/)

## [<img src="https://github.com/QuantLet/Styleguide-and-FAQ/blob/master/pictures/qloqo.png" alt="Visit QuantNet">](http://quantlet.de/) **BCS_ChiPdf** [<img src="https://github.com/QuantLet/Styleguide-and-FAQ/blob/master/pictures/QN2.png" width="60" alt="Visit QuantNet 2.0">](http://quantlet.de/)

```yaml


Name of Quantlet:      'BCS_ChiPdf'

Published in:          'Basic Elements of Computational Statistics'

Description:           'The Chi-squared distribution has two special pdfs. If the
                        degrees of freedom are equal to one, the mean is undefined
                        and the vertical axis is an asymptote. If the degrees of
                        freedom are equal to two the pdf steadily decreases from 0.5.'

Keywords:              'distribution,chisquare,pdf,continuous,univariate,cauchy'

See also:              'BCS_ChiPdfCdf, 
                        BCS_FPdfCdf, 
                        BCS_NormPdfCdf, 
                        BCS_tPdfCdf'

Author:                 Ivan Vasylchenko, Benjamin Samulowski, Noa Tamir

Submitted:             '2016-01-28, Christoph Schult'


Output:                'Plots pdf for two special cases of the chisquare distribution.'

```

![Picture1](BCS_ChiPdf.png)

### R Code
```r


par(mfrow = c(1, 1))

# random variable
z = seq(0, 50, length = 300)

# degrees of freedom
m = c(1, 2)

# chi-squared distribution with first moment
plot(z, dchisq(z, m[1]), type = "l", xlab = "z", ylab = "pdf", xlim = c(0, 10), xaxs = "i", yaxs = "i")
# chi-squared distribution with first and second moment
lines(z, dchisq(z, m[2]), col = "blue")
```

automatically created on 2023-03-28