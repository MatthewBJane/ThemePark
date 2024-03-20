test_that("`theme_dune` runs", {
  x <- theme_dune()

  testthat::expect_equal(class(x), c('theme', 'gg'))
})

test_that("output of `theme_dune` is stable", {
  testthat::skip_if_not_installed('vdiffr')
  vdiffr::expect_doppelganger('A blank theme_dune plot', ggplot2::ggplot() + theme_dune())
})
