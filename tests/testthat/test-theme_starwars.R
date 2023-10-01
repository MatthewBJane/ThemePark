test_that("`theme_starwars` runs", {
  x <- theme_starwars()

  testthat::expect_equal(class(x), c('theme', 'gg'))
})

test_that("output of `theme_starwars` is stable", {
  testthat::skip_if_not_installed('vdiffr')
  vdiffr::expect_doppelganger('A blank theme_starwars plot', ggplot2::ggplot() + theme_starwars())
})
