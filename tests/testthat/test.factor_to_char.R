context("Factor to Character")

test_that("factor_to_char works when expect FALSE",{
    x <- factor(c("a","a","b","c","c","c","c","d","d","d"))

    expect_identical(factor_to_char(x), FALSE)
  })

test_that("factor_to_char works when expect TRUE",{
  x <- factor(c("a","b","c"))

  expect_identical(factor_to_char(x), TRUE)
})

test_that("invalid arguments are detected",{
  x <- (c("a","b","c"))
  y <- "YoYo"
  z <- 299

  expect_error(factor_to_char(x))
  expect_error(factor_to_char(y))
  expect_error(factor_to_char(z))
})
