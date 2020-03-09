library("microbenchmark")
library("Rcpp")
library("RcppArmadillo")
library("ggplot2")
sourceCpp("bench.cpp")

mbm <- microbenchmark("matmul" = { b <- matmul(1000) })

autoplot(mbm)
