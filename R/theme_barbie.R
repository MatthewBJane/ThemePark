## Matthew B Jané
## theme_barbie
## 06/24/2023

# COLOR: add, remove, or edit the colors to fit your scheme. Names should be

#' Barbie Theme Color Palette
#'
#' @format character vector of hex code strings
#' @export
#'
#' @examples
#' barbie_theme_colors
#'
barbie_theme_colors <- c(
  text    = '#a62675ff',
  panel   = '#fdf6faff',
  border  = '#d74ea2ff',
  lighter = '#f5d1e6ff',
  light   = '#eeb4d7ff',
  medium  = '#d74ea2ff',
  dark    = '#bf2986ff'
)



# THEME: rename function and theme() arguments according to your theme design, feel free to edit this how you would like

#' Barbie Inspired Theme
#'
#' @param barbie_font should `theme_barbie` use Google Font's Sansita Swashed? Default is `TRUE`.
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
#'   labs(title = 'Barbie Scatter Plot') +
#'   theme_barbie()
#'
theme_barbie <- function(barbie_font = TRUE, ...){

  # CUSTOM FONT: add a custom font from google fonts
  font_family = ifelse(barbie_font,"barbie","sans") # use this line if you have a custom font
  if (barbie_font) {
    initialize_font(name = "Sansita Swashed", family = "barbie")
  }

  # CUSTOM THEME:
  ggplot2::theme(
        panel.grid.minor = element_blank(),
        panel.grid.major = element_blank(),
        text = element_text(color = barbie_theme_colors["text"], family = font_family),
        title = element_text(size=20),
        panel.background = element_rect(fill = barbie_theme_colors["panel"]),
        panel.border = element_rect(fill = NA, color = barbie_theme_colors["border"],linewidth=1.2),
        axis.title = element_text(size=17),
        axis.text = element_text(size=13,color = barbie_theme_colors["text"]),
        axis.ticks = element_line(color = barbie_theme_colors["border"],linewidth=1),
        legend.background = element_rect(fill = barbie_theme_colors["panel"], color = NA),
        strip.background = element_rect(fill = barbie_theme_colors["lighter"], colour = barbie_theme_colors["border"]),
        strip.text = element_text(colour = barbie_theme_colors["text"]),
        ...
       )
}

# COLOR SCALES: Make pretty color scales

#' Barbie Inspired Color Scales
#'
#' @param ... Additional arguments to pass to `ggplot2::scale_[fill/color]_gradient()`
#'
#' @return a `ggplot` scale object
#'
#' @rdname scale_barbie
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
#'   scale_color_barbie()
#'
scale_fill_barbie <- function(...) {
  ggplot2::scale_fill_gradient(low = '#eeb4d7ff', high = '#bf2986ff', ...)
}

#' @rdname scale_barbie
#' @export
scale_color_barbie <- function(...) {
  ggplot2::scale_color_gradient(low = '#eeb4d7ff', high = '#bf2986ff', ...)
}
