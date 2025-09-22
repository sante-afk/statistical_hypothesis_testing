# Task 2. Testing the hypothesis about the equality of the means 
# of two independent samples.
# Check the hypothesis of equality of means for two independent 
# samples from the original dataset of Student's work, 
# which compared the effect of two different sleeping pills on increasing sleep duration.
# Significance level is 0.05. In R, these data are available under the name "sleep"
d1 <- sleep
str(d1)
write.csv(trees, file = 'sleep_data.csv', row.names = FALSE)

# calculating mean values, variance, median, quantiles, interquartile range
# of the increase in sleep duration for both groups
mean(d1$extra[d1$group==1])
mean(d1$extra[d1$group==2])
var(d1$extra[d1$group==1])
var(d1$extra[d1$group==2])

median(d1$extra[d1$group==1])
median(d1$extra[d1$group==2])

quantile(d1$extra[d1$group==1])
quantile(d1$extra[d1$group==2])

IQR(quantile(d1$extra[d1$group==1]))
IQR(quantile(d1$extra[d1$group==2]))

# boxplot graph
plot(extra~group, data = d1, col = "gray", main="Graph of sleep duration for both groups")

# average increase in sleep duration
t.test(extra~group, data=sleep, var.equal=FALSE)
with(sleep,t.test(extra[group==1],extra[group==2],var.equal=FALSE))

# Test result conclusion is as follows:
# There are no sufficient statistical grounds 
# to reject the null hypothesis about the equality of mean values in two groups.
 
# Rationale: p-value is 0.07939, which is higher than the standard threshold of 0.05. 
# This means that the observed difference between means (0.75 versus 2.33) may be caused by random data variability.
# 95% confidence interval of the difference includes zero (-3.365, 0.205),
# which also indicates the absence of a significant difference.
# The t-statistic value (-1.8608) does not reach the level necessary for statistical 
# rejection of the null hypothesis.
# Thus, at a significance level of 5%, it cannot be argued that the means of the two groups 
# differ statistically significantly.
