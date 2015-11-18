#' Length of the factor equals number of levels
#'
#' @param x factor
#'
#' @return logical
#' @export
#' @examples
#' factor_to_char(iris$Species)
factor_to_char <- function(x){
  assertthat::assert_that(is.factor(x))
  (nlevels(x) == length(x))
}
