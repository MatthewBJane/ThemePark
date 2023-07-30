## Tylor J Harlow
## theme_simpsons
## 06/25/2023

# COLOR: add, remove, or edit the colors to fit your scheme. Names should be
#' Simpsons Theme Color Palette
#'
#' @format character vector of hex code strings
#' @export
#'
#' @examples
#' simpsons_theme_colors
#'
simpsons_theme_colors <- c(
  text    = '#3498dbff',
  panel   = '#f7dc6fff',
  border  = '#3498dbff',
  lighter = '#fdfefeff',
  light   = '#1e8449ff',
  medium  = '#9c5b01ff',
  dark    = '#1c2833ff'
)


# THEME: rename function and theme() arguments according to your theme design, feel free to edit this how you would like

#' Simpsons Inspired Theme
#'
#' @param simpsons_font should `theme_simpsons` use Google Font's IM Fell English? Default is `FALSE`.
#' @param ... additional parameters to pass to `ggplot2::theme()`
#'
#' @return a `ggplot2` `theme` element
#' @export
#'
#' @examples
#' library(ggplot2)
#'
#' ggplot(data = data.frame(x = rnorm(50, 0, 1), y = rnorm(50,0,1)), aes(x = x, y = y)) +
#'   geom_smooth(method = 'lm') +
#'   geom_point() +
#'   labs(title = 'Simpsons Scatter Plot') +
#'   theme_simpsons(simpsons_font = TRUE)
#'
#' ggplot(mpg, aes(cty)) +
#' geom_density(aes(fill=factor(cyl)), alpha=0.8) +
#'   labs(title="Density plot",
#'        subtitle="City Mileage Grouped by Number of cylinders",
#'        caption="Source: mpg",
#'        x="City Mileage",
#'        fill="# Cylinders") +
#'   theme_simpsons(simpsons_font = TRUE)
#'
theme_simpsons <- function(simpsons_font = FALSE, ...){

  # CUSTOM FONT: add a custom font from google fonts
  font_family = ifelse(simpsons_font,"simpsons","Arial") # use this line if you have a custom font
  if (simpsons_font) {
    initialize_font(name = "Rock Salt", family = "simpsons")
  }

  # CUSTOM THEME:
  ggplot2::theme(
    panel.grid.minor = element_blank(),
    panel.grid.major = element_blank(),
    text = element_text(color = simpsons_theme_colors$text, family = font_family),
    title = element_text(size=20),
    panel.background = element_rect(fill = simpsons_theme_colors$panel),
    panel.border = element_rect(fill = NA, color = simpsons_theme_colors$border,linewidth=2),
    axis.title = element_text(size=17),
    axis.text = element_text(size=13,color = simpsons_theme_colors$text),
    axis.ticks = element_line(color = simpsons_theme_colors$border,linewidth=1.7),
    legend.background = element_rect(fill = simpsons_theme_colors$panel, color = NA),
    strip.background = element_rect(fill = simpsons_theme_colors$lighter, colour = simpsons_theme_colors$border),
    strip.text = element_text(colour = simpsons_theme_colors$text),
    ...
  )
}

# COLOR SCALES: Make pretty color scales

# CTK: these are identical to barbie's
# #' Simpsons Inspired Color Scales
# #'
# #' @param ... Additional arguments to pass to `ggplot2::scale_[fill/color]_gradient()`
# #'
# #' @return a `ggplot` scale object
# #'
# #' @rdname scale_simpsons
# #' @export
# #'
# #' @examples
# #' library(ggplot2)
# #'
# #' ggplot(mpg) +
# #'   geom_point(aes(y = class, x = hwy, color = cyl)) +
# #'   labs(title="MPG by Vehicle Type",
# #'        caption="Source: mpg",
# #'        x = "City Mileage",
# #'        color ="# Cylinders") +
# #'   scale_color_simpsons()
# #'
# scale_fill_simpsons <- function(...) {
#   ggplot2::scale_fill_gradient(low = '#eeb4d7ff', high = '#bf2986ff', ...)
# }
#
# #' @rdname scale_simpsons
# #' @export
# scale_color_simpsons <- function(...) {
#   ggplot2::scale_color_gradient(low = '#eeb4d7ff', high = '#bf2986ff', ...)
# }
