# Generate two random samples from a population containing information 
# about air temperature in New York from May to September 1973. 
# Test the hypothesis that these samples follow a normal distribution.
# (Use the function sample(x, size, replace = FALSE) to generate the sample randomly)
airquality?

temp_data <- airquality$Temp

sample1 <- sample(temp_data, size = 30, replace = FALSE)
sample2 <- sample(temp_data, size = 30, replace = FALSE)

shapiro.test(sample1)

shapiro.test(sample2)
