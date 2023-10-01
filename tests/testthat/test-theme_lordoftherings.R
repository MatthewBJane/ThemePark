test_that("`theme_lordoftherings` runs", {
  x <- theme_lordoftherings()

  testthat::expect_equal(class(x), c('theme', 'gg'))
})

test_that("output of `theme_lordoftherings` is stable", {
  testthat::skip_if_not_installed('vdiffr')
  vdiffr::expect_doppelganger('A blank theme_lordoftherings plot', ggplot2::ggplot() + theme_lordoftherings())
})
