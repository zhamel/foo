context("Reordering levels")

test_that("reorder_levels reorder the levels by frequency",{
  x <- factor(c("a","a","b","c","c","c","c","d","d","d"))

  expect_identical(levels(reorder_levels(x)), (c("c","d","a","b")))
})


test_that("invalid arguments are detected",{
  expect_error(reorder_levels("YoYo"))
})


test_that("reorder_levels doesn't do anything if frequency is the same for all levels",{
  x <- factor(c("a","a","a","b","b","b","c","c","c","d","d","d"))

  expect_identical(levels(reorder_levels(x)),levels(x))
})
