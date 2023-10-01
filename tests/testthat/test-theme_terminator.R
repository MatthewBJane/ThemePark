test_that("`theme_terminator` runs", {
  x <- theme_terminator()

  testthat::expect_equal(class(x), c('theme', 'gg'))
})

test_that("output of `theme_terminator` is stable", {
  testthat::skip_if_not_installed('vdiffr')
  vdiffr::expect_doppelganger('A blank theme_terminator plot', ggplot2::ggplot() + theme_terminator())
})
