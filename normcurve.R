x <- rnorm(100, 60, 9)
hist(x, freq=F)
curve(dnorm(x, 60, 9), add=T)
