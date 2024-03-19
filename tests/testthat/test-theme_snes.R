test_that("`theme_snes` runs", {
  x <- theme_snes()

  testthat::expect_equal(class(x), c('theme', 'gg'))
})

test_that("output of `theme_snes` is stable", {
  testthat::skip_if_not_installed('vdiffr')
  vdiffr::expect_doppelganger('A blank theme_snes plot', ggplot2::ggplot() + theme_snes())
})
