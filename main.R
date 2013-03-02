library(MASS)

truehist(sapply(gdp_2001_numbers_only$V1, bben), main="Distribution of the First Digit of 229 GDPs", ylab="Frequency", xlab="First digit")