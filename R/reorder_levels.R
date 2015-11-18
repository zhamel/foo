#' Reorder factor levels based on frequency
#'
#' @param x factor
#'
#' @return factor
#' @export
#' @importFrom dplyr %>%
#' @examples
#' reorder_levels(factor(c("a","a","b","c","c","c","c","d","d","d")))
reorder_levels <- function(x){
  assertthat::assert_that(is.factor(x))
  xdf <- dplyr::data_frame(x)
  count <- xdf %>% dplyr::group_by(x) %>% dplyr::tally()
  factor(stats::reorder(count$x,count$n,dplyr::desc))
}
