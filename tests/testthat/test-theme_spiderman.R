test_that("`theme_spiderman` runs", {
  x <- theme_spiderman()

  testthat::expect_equal(class(x), c('theme', 'gg'))
})

test_that("output of `theme_spiderman` is stable", {
  testthat::skip_if_not_installed('vdiffr')
  vdiffr::expect_doppelganger('A blank theme_spiderman plot', ggplot2::ggplot() + theme_spiderman())
})
