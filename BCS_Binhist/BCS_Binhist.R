# define plot paramters
par(cex=1.3, mar=c(5, 4, 4, 2) + 0.3)
# define a function hist.binom that plots a histogram of the binomial distribution
# dbinom is the function to create the binomial distribution using size n and prob p
 hist.binom = function(n,p,color=0)
{
         x = 0:n
         p = dbinom(x,n,p)
   names(p)= as.character(0:n)
   
   barplot(p, space = 0, ylim = c(0,0.35),
           xlim = c(0,n), lwd = 2,col = "grey",
           xlab = "x", ylab = "Probability")
}
hist.binom(10,0.2)
