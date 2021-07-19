library("microbenchmark")

method1 = function(n) {
    vec = NULL
    for(i in seq_len(n))
        vec = c(vec, i)
    vec
}

method2 = function(n) {
    vec = numeric(n)
    for(i in seq_len(n))
        vec[i] = i
    vec
}

method3 = function(n) seq_len(n)

n <- 10000
microbenchmark(method1(n), method2(n), method3(n))
