test_that("`theme_barbie` runs", {
  x <- theme_barbie()

  testthat::expect_equal(class(x), c('theme', 'gg'))
})

test_that("output of `theme_barbie` is stable", {
  testthat::skip_if_not_installed('vdiffr')
  vdiffr::expect_doppelganger('A blank theme_barbie plot', ggplot2::ggplot() + theme_barbie())
})
