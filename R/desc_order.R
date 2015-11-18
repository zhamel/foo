reorder_levels <- function(x){
  xdf <- dplyr::data_frame(x)
  count <- xdf %>% group_by(x) %>% tally()
  factor(reorder(count$x,count$n,desc))
}
