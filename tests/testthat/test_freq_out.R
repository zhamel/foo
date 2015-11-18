context("Factor levels frequency")

test_that("freq_out success",{
  x <- factor(c("a","a","b","c","c","c","c","d","d","d"))
  expected <- dplyr::data_frame(x = factor(levels(x)),n = as.integer(c(2,1,4,3)))

  expect_identical(freq_out(x),expected)
})

test_that("freq_out failure",{
  x <- factor(c("a","b","c"))
  expected <- dplyr::data_frame(x = factor(levels(x)),n = as.integer(c(1,1,1)))

  expect_identical(factor_to_char(x), TRUE)
})

test_that("freq_out doesn't take non factor input",{
  x <- (c("a","b","c"))
  y <- "YoYo"
  z <- 299

  expect_error(freq_out(x))
  expect_error(freq_out(y))
  expect_error(freq_out(z))
})
