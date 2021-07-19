#!/usr/bin/env Rscript
library("microbenchmark")
df <- data.frame(v = 1:4, name <- letters[1:4])
microbenchmark(df[3, 2], df[3, "name"], df$name[3])
