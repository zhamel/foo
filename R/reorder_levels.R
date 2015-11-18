#' Reorder factor levels based on frequency
#'
#' @param x factor
#'
#' @return factor
#' @export
#' @examples
reorder_levels <- function(x){
  assertthat::assert_that(is.factor(x))
  xdf <- dplyr::data_frame(x)
  count <- xdf %>% dplyr::group_by(x) %>% tally()
  factor(reorder(count$x,count$n,dplyr::desc))
}
