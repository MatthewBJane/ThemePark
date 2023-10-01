test_that("`theme_oppenheimer` runs", {
  x <- theme_oppenheimer()

  testthat::expect_equal(class(x), c('theme', 'gg'))
})

test_that("output of `theme_oppenheimer` is stable", {
  testthat::skip_if_not_installed('vdiffr')
  vdiffr::expect_doppelganger('A blank theme_oppenheimer plot', ggplot2::ggplot() + theme_oppenheimer())
})
