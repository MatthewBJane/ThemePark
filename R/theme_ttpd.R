## Ashley E. Mullan
## theme_ttpd
## 2024

# COLOR: add, remove, or edit the colors to fit your scheme. Names should be

#' TTPD Theme Color Palette
#'
#' @format character vector of hex code strings
#' @export
#' @concept the tortured poets department
#'
#' @examples
#' ttpd_theme_colors
#'
ttpd_theme_colors <- c(
  text    = '#302721',
  panel   = '#ECE8E3',
  border  = '#484139',
  lighter = '#EEE2D2',
  light   = '#776e65',
  medium  = '#484139',
  dark    = '#3A342C'
)



# THEME: rename function and theme() arguments according to your theme design

#' TTPD Inspired Theme
#'
#' @param ttpd_font should `theme_ttpd` use Google Font's Sansita Swashed? Default is `TRUE`.
#' @param ... additional parameters to pass to `ggplot2::theme()`
#'
#' @return a `ggplot2` `theme` element
#' @export
#' @concept ttpd
#'
#' @examples
#' library(ggplot2)
#'
#' ggplot(data = data.frame(x = rnorm(50, 0, 1), y = rnorm(50,0,1)), aes(x = x, y = y)) +
#'   geom_smooth(method = 'lm') +
#'   geom_point() +
#'   labs(title = 'TTPD Scatter Plot') +
#'   theme_ttpd()
#'
theme_ttpd <- function(ttpd_font = TRUE, ...){
  
  # CUSTOM FONT: add a custom font from google fonts
  font_family = ifelse(ttpd_font,"ttpd","sans") # use this line if you have a custom font
  if (ttpd_font) {
    initialize_font(name = "Libre Caslon Text", family = "ttpd")
  }
  
  # CUSTOM THEME:
  ggplot2::theme(
    panel.grid.minor = element_blank(),
    panel.grid.major = element_blank(),
    text = element_text(color = ttpd_theme_colors["text"], family = font_family),
    title = element_text(size=20),
    panel.background = element_rect(fill = ttpd_theme_colors["panel"]),
    panel.border = element_rect(fill = NA, color = ttpd_theme_colors["border"],linewidth=1.2),
    axis.title = element_text(size=17),
    axis.text = element_text(size=13,color = ttpd_theme_colors["text"]),
    axis.ticks = element_line(color = ttpd_theme_colors["border"],linewidth=1),
    legend.background = element_rect(fill = ttpd_theme_colors["panel"], color = NA),
    strip.background = element_rect(fill = ttpd_theme_colors["lighter"], colour = ttpd_theme_colors["border"]),
    strip.text = element_text(colour = ttpd_theme_colors["text"]),
    ...
  )
}

# COLOR SCALES: Make pretty color scales

#' TTPD Inspired Color Scales
#'
#' @param ... Additional arguments to pass to `ggplot2::scale_[fill/color]_gradient()`
#'
#' @return a `ggplot` scale object
#'
#' @rdname scale_ttpd
#' @export
#' @concept ttpd
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
#'   scale_color_ttpd()
#'
scale_fill_ttpd <- function(...) {
  ggplot2::scale_fill_gradient(low = '#776e65', high = '#3a342c', ...)
}

#' @rdname scale_ttpd
#' @export
#' @concept ttpd
scale_color_ttpd <- function(...) {
  ggplot2::scale_color_gradient(low = '#776e65', high = '#3a342c', ...)
}
