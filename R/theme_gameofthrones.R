## Brennan Antone
## theme_gameofthrones
## 07/26/2023

# COLOR: add, remove, or edit the colors to fit your scheme (hex code preferred, but you can use any type). Names should be
#' Game of Thrones Theme Color Palette
#'
#' @format character vector of hex code strings
#' @export
#'
#' @examples
#' gameofthrones_theme_colors
#'
gameofthrones_theme_colors <- c(
  background    = '#1f0700',
  text = '#D7B257',
  panel = '#F2F3B8',
  border  = '#BD6D33',
  lighter = '#F2F3B8',
  light   = '#DFCB69',
  medium  = '#BD6D33',
  dark = '#8C4522'
)
#' Game of Thrones Inspired Theme
#'
#' @param gameofthrones_font should `theme_gameofthrones` use Google Font's Cinzel? Default is `FALSE`.
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
#'   labs(title = 'Game of Thrones Scatter Plot') +
#'   theme_gameofthrones(gameofthrones_font = TRUE)
#'
#' ggplot(mpg, aes(cty)) +
#' geom_density(aes(fill=factor(cyl)), alpha=0.8) +
#'   labs(title="Density plot",
#'        subtitle="City Mileage Grouped by Number of cylinders",
#'        caption="Source: mpg",
#'        x="City Mileage",
#'        fill="# Cylinders") +
#'   theme_gameofthrones(gameofthrones_font = TRUE)
#'
theme_gameofthrones <- function(gameofthrones_font = TRUE, ...){

  # CUSTOM FONT: add a custom font from google fonts
  font_family = ifelse(gameofthrones_font,"gameofthrones","Arial") # use this line if you have a custom font
  if (gameofthrones_font) {
    initialize_font(name="Cinzel", family="gameofthrones")
  }

  # CUSTOM THEME:
  ggplot2::theme(
    plot.background = element_rect(fill = gameofthrones_theme_colors$background),
    panel.grid.minor = element_blank(),
    panel.grid.major = element_blank(),
    text = element_text(color = gameofthrones_theme_colors$text, family = font_family),
    title = element_text(size=20),
    panel.background = element_rect(fill = gameofthrones_theme_colors$panel),
    panel.border = element_rect(fill = NA, color = gameofthrones_theme_colors$border,linewidth=1.2),
    axis.title = element_text(size=17),
    axis.text = element_text(size=13,color = gameofthrones_theme_colors$text),
    axis.ticks = element_line(color = gameofthrones_theme_colors$border,linewidth=1),
    legend.background = element_rect(fill = gameofthrones_theme_colors$panel, color = NA),
    strip.background = element_rect(fill = gameofthrones_theme_colors$lighter, colour = gameofthrones_theme_colors$border),
    strip.text = element_text(colour = gameofthrones_theme_colors$text),
    ...
  )
}

# COLOR SCALES: Make pretty color scales
#' Game of Thrones Inspired Color Scales
#'
#' @param ... Additional arguments to pass to `ggplot2::scale_[fill/color]_gradient()`
#'
#' @return a `ggplot` scale object
#'
#' @rdname scale_gameofthrones
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
#'   scale_color_gameofthrones()
#'
scale_fill_gameofthrones <- function(...) {
  ggplot2::scale_fill_gradient(low = gameofthrones_theme_colors$lighter, high = gameofthrones_theme_colors$dark, ...)
}

#' @rdname scale_gameofthrones
#' @export
scale_color_gameofthrones <- function(...) {
  ggplot2::scale_color_gradient(low = gameofthrones_theme_colors$lighter, high = gameofthrones_theme_colors$dark, ...)
}
