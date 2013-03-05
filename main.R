library(MASS)

get_first_digit <- function(k) {
  as.numeric(head(strsplit(as.character(k), '')[[1]], n=1))
}

truehist(
  sapply(gdp_2001_numbers_only$V1, get_first_digit),
  main="Distribution of the First Digit of 229 GDPs",
  ylab="Frequency",
  xlab="First digit")
