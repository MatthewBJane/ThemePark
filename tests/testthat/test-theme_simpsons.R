test_that("`theme_simpsons` runs", {
  x <- theme_simpsons()

  testthat::expect_equal(class(x), c('theme', 'gg'))
})

test_that("output of `theme_simpsons` is stable", {
  testthat::skip_if_not_installed('vdiffr')
  vdiffr::expect_doppelganger('A blank theme_simpsons plot', ggplot2::ggplot() + theme_simpsons())
})
