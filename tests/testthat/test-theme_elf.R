test_that("`theme_elf` runs", {
  x <- theme_barbie()

  testthat::expect_equal(class(x), c('theme', 'gg'))
})

test_that("output of `theme_elf` is stable", {
  testthat::skip_if_not_installed('vdiffr')
  vdiffr::expect_doppelganger('A blank theme_elf plot', ggplot2::ggplot() + theme_elf())
})
