test_that("`theme_futurama` runs", {
  x <- theme_futurama()

  testthat::expect_equal(class(x), c('theme', 'gg'))
})

test_that("output of `theme_futurama` is stable", {
  testthat::skip_if_not_installed('vdiffr')
  vdiffr::expect_doppelganger('A blank theme_futurama plot', ggplot2::ggplot() + theme_futurama())
})
