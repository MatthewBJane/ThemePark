test_that("`theme_gameofthrones` runs", {
  x <- theme_gameofthrones()

  testthat::expect_equal(class(x), c('theme', 'gg'))
})

test_that("output of `theme_gameofthrones` is stable", {
  testthat::skip_if_not_installed('vdiffr')
  vdiffr::expect_doppelganger('A blank theme_gameofthrones plot', ggplot2::ggplot() + theme_gameofthrones())
})
