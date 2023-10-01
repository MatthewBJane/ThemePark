test_that("`theme_friends` runs", {
  x <- theme_friends()

  testthat::expect_equal(class(x), c('theme', 'gg'))
})

test_that("output of `theme_friends` is stable", {
  testthat::skip_if_not_installed('vdiffr')
  vdiffr::expect_doppelganger('A blank theme_friends plot', ggplot2::ggplot() + theme_friends())
})
