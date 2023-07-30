## Alex Slavenko
## theme_zelda
## 25/07/2023

# COLOR: add, remove, or edit the colors to fit your scheme (hex code preferred, but you can use any type). Names should be
#' Legend of Zelda Theme Color Palette
#'
#' @format character vector of hex code strings
#' @export
#'
#' @examples
#' zelda_theme_colors
#'
zelda_theme_colors <- c(
  text    = '#1F4C73',
  panel   = '#F2EED8',
  border  = '#FBF6E2',
  lighter = '#C4F9F3',
  light   = '#65D6B8',
  medium  = '#3C92A6',
  dark    = '#1F4C73'
)

#' Legend of Zelda Color Palette
#'
#' @format character vector of hex code strings
#' @export
#'
#' @examples
#' zelda_palette
#'
zelda_palette <- c('#494b4b', '#0e5135','#0d9263','#4aba91','#d4ce46')


# THEME: rename function and theme() arguments according to your theme design, feel free to edit this how you would like

#' Legend of Zelda Inspired Theme
#'
#' @param zelda_font should `theme_zelda` use Google Font's IM Fell English? Default is `FALSE`.
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
#'   labs(title = 'Zelda Scatter Plot') +
#'   theme_zelda(zelda_font = TRUE)
#'
#' ggplot(mpg, aes(cty)) +
#' geom_density(aes(fill=factor(cyl)), alpha=0.8) +
#'   labs(title="Density plot",
#'        subtitle="City Mileage Grouped by Number of cylinders",
#'        caption="Source: mpg",
#'        x="City Mileage",
#'        fill="# Cylinders") +
#'   theme_zelda(zelda_font = TRUE)
#'
theme_zelda <- function(zelda_font = FALSE, ...){

  # CUSTOM FONT: add a custom font from google fonts
  font_family = ifelse(zelda_font,"zelda","Arial") # use this line if you have a custom font
  if (zelda_font) {
    initialize_font(name = "Spectral SC", family = "zelda")
  }

  # CUSTOM THEME:
  ggplot2::theme(
    panel.grid.minor = element_blank(),
    panel.grid.major = element_blank(),
    text = element_text(color = zelda_theme_colors["text"], family = font_family),
    title = element_text(size=20),
    panel.background = element_rect(fill = zelda_theme_colors["panel"]),
    panel.border = element_rect(fill = NA, color = zelda_theme_colors["border"],linewidth=1.2),
    axis.title = element_text(size=17),
    axis.text = element_text(size=13),
    axis.ticks = element_line(color = zelda_theme_colors["border"],linewidth=1),
    legend.background = element_rect(fill = zelda_theme_colors["panel"], color = NA),
    strip.background = element_rect(fill = zelda_theme_colors["lighter"], colour = zelda_theme_colors["border"]),
    strip.text = element_text(colour = zelda_theme_colors["text"]),
    ...
  )
}

# COLOR SCALES: Make pretty color scales

#' Legend of Zelda Inspired Color Scales
#'
#' @param ... Additional arguments to pass to `ggplot2::scale_[fill/color]_gradient()`
#'
#' @return a `ggplot` scale object
#'
#' @rdname scale_zelda
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
#'   scale_color_zelda() +
#'   theme_zelda(zelda_font = TRUE)
#'
scale_fill_zelda <- function(...) {
  ggplot2::scale_fill_gradient(low = zelda_theme_colors["lighter"], high = zelda_theme_colors["dark"], ...)
}

#' @rdname scale_zelda
#' @export
scale_color_zelda <- function(...) {
  ggplot2::scale_color_gradient(low = zelda_theme_colors["lighter"], high = zelda_theme_colors["dark"], ...)
}
