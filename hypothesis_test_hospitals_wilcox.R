# Task 5. It is necessary to assess the statistical significance
# of the difference in the length of hospital stay in hospitals No. 1 and No. 2 for the reporting year.
hp <- read.csv("hospitals_data.csv")
wilcox.test(hp$Hospital.1, hp$Hospital.2,  subset = year %in% c(1, 12))
# conclusion: The difference in the length of hospital stay between Hospital No. 1 
# and No. 2 for the reporting year is statistically insignificant (p ≈ 0.077 > 0.05).

