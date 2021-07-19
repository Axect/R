library("microbenchmark")

mc <- function(N) {
    hits = 0
    for (i in seq_len(N)) {
        u1 = runif(1)
        u2 = runif(1)
        if (u1 ^ 2 > u2)
            hits = hits + 1
    }
    return(hits / N)
}

mc_vec <- function(N) mean(runif(N)^2 > runif(N))

N <- 500000

microbenchmark(mc(N), mc_vec(N))
