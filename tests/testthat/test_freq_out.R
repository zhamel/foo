context("Factor levels frequency")

test_that("freq_out works when different frequency",{
  x <- factor(c("a","a","b","c","c","c","c","d","d","d"))
  expected <- dplyr::data_frame(x = factor(levels(x)),n = as.integer(c(2,1,4,3)))

  expect_identical(freq_out(x),expected)
})

test_that("freq_out works with levels of same frequency",{
  x <- factor(c("a","b","c"))
  expected <- dplyr::data_frame(x = factor(levels(x)),n = as.integer(c(1,1,1)))

  expect_identical(freq_out(x), expected)
})

test_that("invalid arguments are detected",{
  x <- (c("a","b","c"))
  y <- "YoYo"
  z <- 299

  expect_error(freq_out(x))
  expect_error(freq_out(y))
  expect_error(freq_out(z))
})
