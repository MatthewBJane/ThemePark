## Alex Slavenko
## theme_terminator
## 26/07/2023

# COLOR: add, remove, or edit the colors to fit your scheme (hex code preferred, but you can use any type). Names should be
#' Terminator Theme Color Palette
#'
#' @format character vector of hex code strings
#' @export
#'
#' @examples
#' terminator_theme_colors
#'
terminator_theme_colors <- c(
  panel   = '#000000ff',
  border  = '#5A5A5A',
  strip   = '#242526',
  text    = '#ffffffff',
  point   = '#FF0000',
  lighter = '#F69697',
  light   = '#D31A38',
  medium  = '#B11226',
  dark    = '#800808'
)


# THEME: rename function and theme() arguments according to your theme design, feel free to edit this how you would like

#' Terminator Inspired Theme
#'
#' @param terminator_font should `theme_terminator` use Google Font's IM Fell English? Default is `FALSE`.
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
#'   labs(title = 'Terminator Scatter Plot') +
#'   theme_terminator(terminator_font = TRUE)
#'
#' ggplot(mpg, aes(cty)) +
#' geom_density(aes(fill=factor(cyl)), alpha=0.8) +
#'   labs(title="Density plot",
#'        subtitle="City Mileage Grouped by Number of cylinders",
#'        caption="Source: mpg",
#'        x="City Mileage",
#'        fill="# Cylinders") +
#'   theme_terminator(terminator_font = TRUE)
#'
theme_terminator <- function(terminator_font = FALSE, ...){

  # CUSTOM FONT: add a custom font from google fonts
  font_family = ifelse(terminator_font,"terminator","Arial") # use this line if you have a custom font
  if (terminator_font) {
    initialize_font(name = "Orbitron", family = "terminator")
  }

  # CUSTOM THEME:
  ggplot2::theme(
    panel.grid.minor = element_blank(),
    panel.grid.major = element_blank(),
    text = element_text(color = terminator_theme_colors$text, family = font_family),
    title = element_text(size=20),
    panel.background = element_rect(fill = terminator_theme_colors$panel),
    panel.border = element_rect(fill = NA, color = terminator_theme_colors$border,linewidth=1.4),
    axis.title = element_text(size=17),
    axis.text = element_text(size=15,color = terminator_theme_colors$text),
    axis.ticks = element_line(color = terminator_theme_colors$border,linewidth=1),
    legend.background = element_rect(fill = terminator_theme_colors$panel, color = NA),
    plot.background = element_rect(fill = terminator_theme_colors$panel),
    strip.background = element_rect(fill = terminator_theme_colors$strip, colour = terminator_theme_colors$border),
    strip.text = element_text(colour = terminator_theme_colors$text),
    ...
  )
}

# COLOR SCALES: Make pretty color scales

#' Terminator Inspired Color Scales
#'
#' @param ... Additional arguments to pass to `ggplot2::scale_[fill/color]_gradient()`
#'
#' @return a `ggplot` scale object
#'
#' @rdname scale_terminator
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
#'   scale_color_terminator() +
#'   theme_terminator(terminator_font = TRUE)
#'
scale_fill_terminator <- function(...) {
  ggplot2::scale_fill_gradient(low = terminator_theme_colors$lighter, high = terminator_theme_colors$dark, ...)
}

#' @rdname scale_terminator
#' @export
scale_color_terminator <- function(...) {
  ggplot2::scale_color_gradient(low = terminator_theme_colors$lighter, high = terminator_theme_colors$dark, ...)
}
