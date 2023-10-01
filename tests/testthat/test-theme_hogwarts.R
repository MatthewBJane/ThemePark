test_that("`theme_gryffindor` runs", {
  x <- theme_gryffindor()

  testthat::expect_equal(class(x), c('theme', 'gg'))
})

test_that("output of `theme_gryffindor` is stable", {
  testthat::skip_if_not_installed('vdiffr')
  vdiffr::expect_doppelganger('A blank theme_gryffindor plot', ggplot2::ggplot() + theme_gryffindor())
})

test_that("`theme_ravenclaw` runs", {
  x <- theme_ravenclaw()

  testthat::expect_equal(class(x), c('theme', 'gg'))
})

test_that("output of `theme_ravenclaw` is stable", {
  testthat::skip_if_not_installed('vdiffr')
  vdiffr::expect_doppelganger('A blank theme_ravenclaw plot', ggplot2::ggplot() + theme_ravenclaw())
})

test_that("`theme_hufflepuff` runs", {
  x <- theme_hufflepuff()

  testthat::expect_equal(class(x), c('theme', 'gg'))
})

test_that("output of `theme_hufflepuff` is stable", {
  testthat::skip_if_not_installed('vdiffr')
  vdiffr::expect_doppelganger('A blank theme_hufflepuff plot', ggplot2::ggplot() + theme_hufflepuff())
})

test_that("`theme_slytherin` runs", {
  x <- theme_slytherin()

  testthat::expect_equal(class(x), c('theme', 'gg'))
})

test_that("output of `theme_slytherin` is stable", {
  testthat::skip_if_not_installed('vdiffr')
  vdiffr::expect_doppelganger('A blank theme_slytherin plot', ggplot2::ggplot() + theme_slytherin())
})

