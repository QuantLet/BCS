
[<img src="https://github.com/QuantLet/Styleguide-and-FAQ/blob/master/pictures/banner.png" width="880" alt="Visit QuantNet">](http://quantlet.de/index.php?p=info)

## [<img src="https://github.com/QuantLet/Styleguide-and-Validation-procedure/blob/master/pictures/qloqo.png" alt="Visit QuantNet">](http://quantlet.de/) **BCS_RANDU** [<img src="https://github.com/QuantLet/Styleguide-and-Validation-procedure/blob/master/pictures/QN2.png" width="60" alt="Visit QuantNet 2.0">](http://quantlet.de/d3/ia)

```yaml

Name of Quantlet : BCS_RANDU

Published in : Basic Elements of Computational Statistics

Description : 'Implementation of the RANDU random number generator developed by IBM in the 1960s.
It is a Linear Congruential Generator procedure. This generator has some cearly non-random
characteristics, due to badly chosen starting values. '

Keywords : IBM, random number, generation, linear congruential generator, starting

Author : [New] Martin Schelisch

Submitted : 2016-01-28, Christoph Schult

Input : none

Output : A vector of random numbers with less than ideal random characteristics

```


```r
# set a seed here or inside the RANDU function seed = 1

# Implementation of the RANDU generator (with seed=1)
RANDU <- function(n, seed = 1) {
    # predefine constants
    U <- NULL
    a = 2^16 + 3
    m = 2^31
    for (i in 1:n) {
        seed = (a * seed)%%m
        U[i] = seed/m  # normalize the values to [0,1]
    }
    print(U)
}

# Run the generator four times for 4 (insufficiently) random numbers
RANDU(4)
```
