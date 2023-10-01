test_that("`theme_alien` runs", {
  x <- theme_alien()

  testthat::expect_equal(class(x), c('theme', 'gg'))
})

test_that("output of `theme_alien` is stable", {
  testthat::skip_if_not_installed('vdiffr')
  vdiffr::expect_doppelganger('A blank theme_alien plot', ggplot2::ggplot() + theme_alien())
})
