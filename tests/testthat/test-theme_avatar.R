test_that("`theme_avatar` runs", {
  x <- theme_avatar()

  testthat::expect_equal(class(x), c('theme', 'gg'))
})

test_that("output of `theme_avatar` is stable", {
  testthat::skip_if_not_installed('vdiffr')
  vdiffr::expect_doppelganger('A blank theme_avatar plot', ggplot2::ggplot() + theme_avatar())
})
