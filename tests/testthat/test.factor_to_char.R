context("Factor to Character")

test_that("Factor_to_character",{
    x <- factor(c("a","a","b","c","c","c","c","d","d","d"))

    expect_identical(factor_to_char(x), FALSE)
  })

test_that("Factor_to_character",{
  x <- factor(c("a","b","c"))

  expect_identical(factor_to_char(x), TRUE)
})

test_that("Factor_to_character doesn't take non factor input",{
  x <- (c("a","b","c"))
  y <- "YoYo"
  z <- 299

  expect_error(factor_to_char(x))
  expect_error(factor_to_char(y))
  expect_error(factor_to_char(z))
})
