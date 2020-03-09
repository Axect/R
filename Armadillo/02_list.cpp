#include <RcppArmadillo.h>
// [[Rcpp::depends(RcppArmadillo)]]

using namespace Rcpp;
using namespace arma;

// [[Rcpp::export()]]
List a8(int n, int r, double v) {
    mat x1;
    x1.print();
    x1.reshape(n, r);
    x1.fill(v);

    mat x2(n, r);
    x2.fill(v);

    mat x3 = x2;
    x3.reshape(r, n);

    List ret;
    ret["x1"] = x1;
    ret["x2"] = x2;
    ret["x3"] = x3;
    return ret;
}
