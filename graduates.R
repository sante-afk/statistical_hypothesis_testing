# Two groups of graduates from two higher educational institutions, 
# each with 10 people, received assessments of their administrative abilities (in points),
# as presented in the table.
gr <- read.csv("graduate_preparation_levels.csv")
wilcox.test(gr$Xi1, gr$Xi2, data = gr)
