test_that("`theme_barbie` runs", {
  x <- theme_barbie()

  testthat::expect_equal(class(x), c('theme', 'gg'))
})
