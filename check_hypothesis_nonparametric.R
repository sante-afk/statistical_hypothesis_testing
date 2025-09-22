# Task 4. Hypothesis testing using non-parametric criteria
# The built-in airquality dataset contains information about 
# ozone levels in New York City from May to September 1973.
# Test the hypothesis that the ozone distribution in May and August was the same.
ozon <- airquality
str(ozon)
write.csv(trees, file = 'ozon_data.csv', row.names = FALSE)

# ozone layer chart
boxplot(Ozone~Month, data=airquality, subset=Month %in%c(5, 8), col="blue")

# Since there is no data on the type of ozone content distribution, 
# the non-parametric Wilcoxon test is used to test the hypothesis.
wilcox.test(Ozone~Month, data=airquality, subset=Month %in% c(5, 8))

# The function calculates the value of the Wilcoxon rank-sum statistic, 
# as well as the p-value, the value of which allows us to conclude that 
# the hypothesis of homogeneity of distributions can be rejected at a significance level of 0.05.
# Test statistic W = 127.5
# P-value = 0.0001208

# Alternative hypothesis: the true location (median) shift between the groups is not equal to zero.
# Since the p-value is significantly less than the standard significance level of 0.05, 
# there is statistically significant evidence that the ozone concentration in May and August differs significantly.
