# Hypothesis testing for the normal distribution law
# Load the built-in dataset trees and familiarize yourself with its structure. 
# Test the hypothesis that the height of the trees follows a normal distribution 
# at a significance level of 0.05.
tr <- trees
str(tr)

k <- 1+3.332*log10(length(tr$Height)) # determining the number of intervals using Sturges' formula

hist(tr$Height,round(k), freq = FALSE, xlab = "Height", main = "Histogram and Probability Density Function of Tree Heights
", col ="blue" )
lines(density(tr$Height),col = "red", lwd = 2)

# qq-graph
qqnorm(tr$Height)
qqline(tr$Height,col="red")

# Pearson's criterion
chisq.test(tr$Height)

# Kolmogorov's criterion
ks.test(tr$Height, "pnorm", mean=mean(tr$Height), sd=sd(tr$Height))

# Shapiro-Wilk criterion
shapiro.test(tr$Height)

# Lilliefors criterion
install.packages("nortest")
library(nortest)
lillie.test(tr$Height)

