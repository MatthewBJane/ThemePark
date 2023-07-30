## Francisco Garre - Frutos
## theme_godfather
## 07/27/2023

#' Godfather Theme Color Palette
#'
#' @format character vector of hex code strings
#' @export
#'
#' @examples
#' godfather_theme_colors
#'
godfather_theme_colors <- c(
  text    = '#d3cfc3',
  panel   = '#030303',
  border  = '#d3cfc3',
  lighter = '#d3cfc3',
  light   = '#912411',
  medium  = '#d3cfc3',
  dark    = '#912411'
)

#' Godfather Inspired Theme
#'
#' @param godfather_font should `theme_godfather` use Google Font's Philosopher? Default is `FALSE`.
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
#'   geom_point(color = 'white') +
#'   labs(title = 'Godfather Scatter Plot') +
#'   theme_godfather(godfather_font = TRUE)
#'
#' ggplot(mpg, aes(cty)) +
#' geom_density(aes(fill=factor(cyl)), alpha=0.8) +
#'   labs(title="Density plot",
#'        subtitle="City Mileage Grouped by Number of cylinders",
#'        caption="Source: mpg",
#'        x="City Mileage",
#'        fill="# Cylinders") +
#'   theme_godfather(godfather_font = TRUE)
#'
theme_godfather <- function(godfather_font = FALSE, ...){

  # CUSTOM FONT: add a custom font from google fonts
  font_family = ifelse(godfather_font,"godfather","Arial") # use this line if you have a custom font
  if (godfather_font) {
    initialize_font(name = "Philosopher", family = "godfather")
  }

  # CUSTOM THEME:
  ggplot2::theme(
    panel.grid.minor = element_blank(),
    panel.grid.major = element_blank(),
    text = element_text(color = godfather_theme_colors$text, family = font_family),
    title = element_text(size=20),
    panel.background = element_rect(fill = godfather_theme_colors$panel),
    panel.border = element_rect(fill = NA, color = godfather_theme_colors$border,linewidth=1.2),
    plot.background = element_rect(fill = godfather_theme_colors$panel),
    axis.title = element_text(size=17),
    axis.text = element_text(size=13,color = godfather_theme_colors$text),
    axis.ticks = element_line(color = godfather_theme_colors$border,linewidth=1),
    legend.background = element_rect(fill = godfather_theme_colors$panel, color = NA),
    strip.background = element_rect(fill = godfather_theme_colors$lighter, colour = godfather_theme_colors$border),
    strip.text = element_text(colour = godfather_theme_colors$text),
    ...
  )
}

#' Godfather Inspired Color Scales
#'
#' @param ... Additional arguments to pass to `ggplot2::scale_[fill/color]_gradient()`
#'
#' @return a `ggplot` scale object
#'
#' @rdname scale_godfather
#' @export
#'
#' @examples
#' library(ggplot2)
#'
#' ggplot(mpg) +
#'   geom_point(aes(y = class, x = hwy, color = cyl)) +
#'   labs(title="MPG by Vehicle Type",
#'        caption="Source: mpg",
#'        x = "City Mileage",
#'        color ="# Cylinders") +
#'   scale_color_godfather() +
#'   theme_godfather(godfather_font = TRUE)
#'
scale_fill_godfather <- scale_fill_godfather <- function(...) {
  ggplot2::scale_fill_gradient(low = godfather_theme_colors$lighter, high = godfather_theme_colors$dark, ...)
}

#' @rdname scale_godfather
#' @export
scale_color_godfather <- function(...) {
  ggplot2::scale_color_gradient(low = godfather_theme_colors$lighter, high = godfather_theme_colors$dark, ...)
}
