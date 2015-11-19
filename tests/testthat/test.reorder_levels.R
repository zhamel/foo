context("Reordering levels")

test_that("reorder the levels by frequency",{
  x <- factor(c("a","a","b","c","c","c","c","d","d","d"))

  expect_identical(levels(reorder_levels(x)), (c("c","d","a","b")))
})


test_that("invalid arguments are detected",{
  x <- (c("a","b","c"))
  y <- "YoYo"
  z <- 299

  expect_error(reorder_levels(x))
  expect_error(reorder_levels(y))
  expect_error(reorder_levels(z))
})


test_that("order doesn't change if frequency is the same for all levels",{
  x <- factor(c("a","a","a","b","b","b","c","c","c","d","d","d"))

  expect_identical(levels(reorder_levels(x)),levels(x))
})
