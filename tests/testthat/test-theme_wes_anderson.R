test_that("`theme_grand_budapest` runs", {
  x <- theme_grand_budapest()

  testthat::expect_equal(class(x), c('theme', 'gg'))
})

test_that("output of `theme_grand_budapest` is stable", {
  testthat::skip_if_not_installed('vdiffr')
  vdiffr::expect_doppelganger('A blank theme_grand_budapest plot', ggplot2::ggplot() + theme_grand_budapest())
})

test_that("`theme_asteroid_city` runs", {
  x <- theme_asteroid_city()

  testthat::expect_equal(class(x), c('theme', 'gg'))
})

test_that("output of `theme_asteroid_city` is stable", {
  testthat::skip_if_not_installed('vdiffr')
  vdiffr::expect_doppelganger('A blank theme_asteroid_city plot', ggplot2::ggplot() + theme_asteroid_city())
})

test_that("`theme_french_dispatch` runs", {
  x <- theme_french_dispatch()

  testthat::expect_equal(class(x), c('theme', 'gg'))
})

test_that("output of `theme_french_dispatch` is stable", {
  testthat::skip_if_not_installed('vdiffr')
  vdiffr::expect_doppelganger('A blank theme_french_dispatch plot', ggplot2::ggplot() + theme_french_dispatch())
})

test_that("`theme_moonrise_kingdom` runs", {
  x <- theme_moonrise_kingdom()

  testthat::expect_equal(class(x), c('theme', 'gg'))
})

test_that("output of `theme_moonrise_kingdom` is stable", {
  testthat::skip_if_not_installed('vdiffr')
  vdiffr::expect_doppelganger('A blank theme_moonrise_kingdom plot', ggplot2::ggplot() + theme_moonrise_kingdom())
})
