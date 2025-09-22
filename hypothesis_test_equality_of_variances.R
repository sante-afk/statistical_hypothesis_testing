# Task 3. Checking the hypothesis of equality of variances for two independent samples.
# Check the hypothesis of equality of variances for two independent samples at
# a significance level of 0.05 for the dataset from the previous section.

# compute the variances of both samples
v1 <- var(d1$extra[d1$group==1])
v2 <- var(d1$extra[d1$group==2])

# hypothesis testing using the Fisher criterion
var.test(d1$extra[d1$group==2],d1$extra[d1$group==1])

# The function calculated the value of the Fisher statistic, 
# the degrees of freedom, and the p-value. Since the p-value = 0.7427 
# exceeds the specified significance level (0.05), there are no grounds
# to reject the null hypothesis. Additionally, the function provides a 95% confidence 
# interval within which the value of the statistic falls.
