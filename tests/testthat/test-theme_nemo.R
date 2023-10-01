test_that("`theme_nemo` runs", {
  x <- theme_nemo()

  testthat::expect_equal(class(x), c('theme', 'gg'))
})

test_that("output of `theme_nemo` is stable", {
  testthat::skip_if_not_installed('vdiffr')
  vdiffr::expect_doppelganger('A blank theme_nemo plot', ggplot2::ggplot() + theme_nemo())
})
