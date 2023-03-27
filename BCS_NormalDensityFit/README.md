[<img src="https://github.com/QuantLet/Styleguide-and-FAQ/blob/master/pictures/banner.png" width="1100" alt="Visit QuantNet">](http://quantlet.de/)

## [<img src="https://github.com/QuantLet/Styleguide-and-FAQ/blob/master/pictures/qloqo.png" alt="Visit QuantNet">](http://quantlet.de/) **BCS_NormalDensityFit** [<img src="https://github.com/QuantLet/Styleguide-and-FAQ/blob/master/pictures/QN2.png" width="60" alt="Visit QuantNet 2.0">](http://quantlet.de/)

```yaml


Name of Quantlet:           'BCS_NormalDensityFit'

Published in:               'Basic Elements of Computational Statistics'

Description:                'Histogram for the height of trees from the trees package.
                             It is possible to display density estimates for the height
                             based on a assumed normal distribuion and estimated density.'

Keywords:                   'rpanel, density estimation, histogram, density, plot'

Author:                      Polina Marchenko

Submitted:                  '2016-01-28, Christoph Schult'


Output:                     'An interactive histogram with denisty estimation for the height of
                             trees.'

```

![Picture1](BCS_NormalDensityFit.png)

### R Code
```r

# Normal density fit
require(rpanel)  # load required package
data(trees)  # load required data
attach(trees)  # attach required data
y = Height  # define y as height
rp.normal(y, panel.plot = T)  # plot interacitve histogram
```

automatically created on 2023-03-28