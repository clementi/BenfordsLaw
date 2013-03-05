library(MASS)

get_first_digit <- function(k) {
  as.numeric(head(strsplit(as.character(k), '')[[1]], n=1))
}

# Plot the distribution of first digits
truehist(
  sapply(gdp_2001_numbers_only$V1, get_first_digit),
  main="Distribution of the First Digit of 229 GDPs",
  ylab="Frequency",
  xlab="First digit")

benford_prob <- function(k) {
  log10(1 + 1 / get_first_digit(k))
}

# Plot the Benford's law predictions
points(sapply(c(1:9), benford_prob))
