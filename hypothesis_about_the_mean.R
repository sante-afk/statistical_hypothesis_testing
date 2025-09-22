# Task 1. Hypothesis testing for the mean value.
# Load the built-in trees dataset, familiarize yourself with its structure. 
# Plot a histogram of the distribution of tree heights. 
# Test the hypothesis that the mean tree height is 78 feet at a significance level of 0.05.

# dataset trees
?trees
tr <- trees
View(tr)
str(tr)
write.csv(trees, file = 'trees_data.csv', row.names = FALSE)

# determination of the number of intervals according to Sturges' formula
k <- 1+3.332*log10(length(tr$Height)) 
hist(tr$Height, round(k), xlab = "Height", main = "Histogram of the distribution of tree heights")

# based on the histogram, one can assume that the height of trees has a normal distribution,
# therefore for testing the hypothesis, one can use the one-sample Student's t-test.

# function for calculating Student's t-statistic
t.test(tr$Height, m = 78)

# the function calculated the value of the Student's statistic (t = -1.7476), 
# the number of degrees of freedom, and the p-value. 
# Since the p-value = 0.09076 exceeds the specified significance level (0.05), 
# there are no grounds to reject the null hypothesis. 
# In addition, the function provides a 95% confidence interval in which the true mean may be located.