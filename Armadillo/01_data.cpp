#include<RcppArmadillo.h>
// [[Rcpp::depends(RcppArmadillo)]]

using namespace Rcpp;

// [[Rcpp::export()]]
arma::mat a1(arma::mat x) {
    return x;
}

// [[Rcpp::export()]]
arma::vec a2(arma::vec x) {
    return x;
}

// [[Rcpp::export()]]
arma::mat a3(NumericMatrix x) {
    arma::mat y = as<arma::mat>(x);
    return y;
}

// [[Rcpp::export()]]
NumericMatrix a4(arma::mat x) {
    NumericMatrix y = wrap(x);
    return y;
}

// [[Rcpp::export()]]
arma::mat a5(arma::mat x) {
    int R = x.n_rows;
    int C = x.n_cols;
    Rcout << "Rows: " << R << std::endl;
    Rcout << "Cols: " << C << std::endl;
    return x;
}

// [[Rcpp::export()]]
int a7(arma::mat x) {
    x.print();
    x.print("Note");
    return 0;
}
