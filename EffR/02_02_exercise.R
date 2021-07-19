library("microbenchmark")

X <- as.data.frame(matrix(rnorm(1e7), nrow <- 1e6))

microbenchmark(lapply(X, median), parallel::mclapply(X, median))
