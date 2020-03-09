#include<RcppArmadillo.h>
// [[Rcpp::depends(RcppArmadillo)]]

using namespace Rcpp;

// [[Rcpp::export()]]
double matmul(unsigned long n) {
    arma::mat a = arma::randu<arma::mat>(n, n);
    arma::mat b = arma::randu<arma::mat>(n, n);

    arma::mat c = a * b;
    return c(n-1, n-1);
}
