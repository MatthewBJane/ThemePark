## Velu P K Immonen
## theme_spiderman
## 07/25/2023

# COLOR: add, remove, or edit the colors to fit your scheme (hex code preferred, but you can use any type). Names should be
#' Spiderman Theme Color Palette
#'
#' @format character vector of hex code strings
#' @export
#'
#' @examples
#' spiderman_theme_colors
#'
spiderman_theme_colors <- c(
  text    = '#101010',
  panel   = '#de0619',
  border  = '#101010',
  light   = '#e27B78',
  medium  = '#e55751',
  dark    = '#601a18',
  white   = '#fefefe',
  blue    = '#333399ff'
)


# THEME: rename function and theme() arguments according to your theme design, feel free to edit this how you would like

#' Spiderman Inspired Theme
#'
#' @param spiderman_font should `theme_spiderman` use Google Font's IM Fell English? Default is `TRUE`.
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
#'   labs(title = 'Spiderman Scatter Plot') +
#'   theme_spiderman()
#'
#' ggplot(mpg, aes(cty)) +
#' geom_density(aes(fill=factor(cyl)), alpha=0.8) +
#'   labs(title="Density plot",
#'        subtitle="City Mileage Grouped by Number of cylinders",
#'        caption="Source: mpg",
#'        x="City Mileage",
#'        fill="# Cylinders") +
#'   theme_spiderman()
#'
theme_spiderman <- function(spiderman_font = TRUE, ...){

  # CUSTOM FONT: add a custom font from google fonts
  font_family = ifelse(spiderman_font,"spiderman","sans") # use this line if you have a custom font
  if (spiderman_font) {
    initialize_font(name = "Bangers", family = "spiderman")
  }

  # CUSTOM THEME:
  ggplot2::theme(
    panel.grid.minor = element_blank(),
    panel.grid.major = element_line(color = '#00000055'),
    text = element_text(color = spiderman_theme_colors["text"], family = font_family),
    title = element_text(size=20),
    panel.background = element_rect(fill = spiderman_theme_colors["panel"]),
    panel.border = element_rect(fill = NA, color = spiderman_theme_colors["border"],linewidth=1.2),
    axis.title = element_text(size=17),
    axis.text = element_text(size=13,color = spiderman_theme_colors["text"]),
    axis.ticks = element_line(color = spiderman_theme_colors["border"],linewidth=1),
    legend.background = element_rect(fill = spiderman_theme_colors["panel"], color = NA),
    strip.background = element_rect(fill = spiderman_theme_colors["medium"], colour = spiderman_theme_colors["blue"]),
    strip.text = element_text(colour = spiderman_theme_colors["text"]),
    ...
  )
}

# COLOR SCALES: Make pretty color scales
#' Spiderman Inspired Color Scales
#'
#' @param ... Additional arguments to pass to `ggplot2::scale_[fill/color]_gradient()`
#'
#' @return a `ggplot` scale object
#'
#' @rdname scale_spiderman
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
#'   scale_color_spiderman()
#'
scale_fill_spiderman <- function(...) {
  ggplot2::scale_fill_gradient(low = spiderman_theme_colors["medium"], high = spiderman_theme_colors["blue"], ...)
}

#' @rdname scale_spiderman
#' @export
scale_color_spiderman <- function(...) {
  ggplot2::scale_color_gradient(low = spiderman_theme_colors["medium"], high = spiderman_theme_colors["blue"], ...)
}
