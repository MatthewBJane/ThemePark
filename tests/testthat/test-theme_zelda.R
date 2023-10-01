test_that("`theme_zelda` runs", {
  x <- theme_zelda()

  testthat::expect_equal(class(x), c('theme', 'gg'))
})

test_that("output of `theme_zelda` is stable", {
  testthat::skip_if_not_installed('vdiffr')
  vdiffr::expect_doppelganger('A blank theme_zelda plot', ggplot2::ggplot() + theme_zelda())
})
