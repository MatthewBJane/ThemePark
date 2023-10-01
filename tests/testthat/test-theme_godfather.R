test_that("`theme_godfather` runs", {
  x <- theme_godfather()

  testthat::expect_equal(class(x), c('theme', 'gg'))
})

test_that("output of `theme_godfather` is stable", {
  testthat::skip_if_not_installed('vdiffr')
  vdiffr::expect_doppelganger('A blank theme_godfather plot', ggplot2::ggplot() + theme_godfather())
})
