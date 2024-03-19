## Christopher T. Kenny
## theme_snes
## 2024-03-18

#' Super Nintendo Inspired Theme Color Palette
#'
#' @format character vector of hex code strings
#' @export
#' @concept snes
#'
#' @examples
#' snes_theme_colors
#'
snes_theme_colors <- c(
  background = '#B7B7B7',
  text       = '#515051',
  panel      = '#E5E5E5',
  border     = '#000000',
  strip_text = '#000000',
  lighter    = '#FFFFFF',
  light      = '#CCCCEB',
  medium     = '#7F7F7F',
  dark       = '#8C78C7'
)

# DISCRETE PALETTE COLORS: Please update to some colors that work with your theme
#' Super Nintendo Inspired Color Palette
#'
#' @format character vector of hex code strings
#' @export
#' @concept snes
#'
#' @examples
#' snes_palette
#'
snes_palette <- c(
  '#806BBA', '#C7C7E6', # original buttons
  '#00926C', '#0150A5', '#DC3A4A', '#FFBC56', # PAL region buttons
  '#444872' # Japanese dpad (other colors too close)
)

#' Super Nintendo Inspired Theme
#'
#' @param snes_font should `theme_snes` use custom font? Default is `TRUE`.
#' @param ... additional parameters to pass to `ggplot2::theme()`
#'
#' @return a `ggplot2` `theme` element
#' @export
#' @concept snes
#'
#' @examples
#' library(ggplot2)
#'
#' ggplot(data = data.frame(x = rnorm(50, 0, 1), y = rnorm(50,0,1)), aes(x = x, y = y)) +
#'   geom_smooth(method = 'lm') +
#'   geom_point() +
#'   labs(title = 'snes Scatter Plot') +
#'   theme_snes()
#'
#' ggplot(mpg, aes(cty)) +
#'   geom_density(aes(fill=factor(cyl)), alpha=0.8) +
#'   labs(title="Density plot",
#'        subtitle="City Mileage Grouped by Number of cylinders",
#'        caption="Source: mpg",
#'        x="City Mileage",
#'        fill="# Cylinders") +
#'   theme_snes() +
#'   scale_fill_snes_d()
#'
#'
theme_snes <- function(snes_font = TRUE, ...) {

  # CUSTOM FONT: add a custom font from google fonts
  font_family <- ifelse(snes_font, 'snes', 'sans') # use this line if you have a custom font - change snes to match the font name used
  if (snes_font) {
    initialize_font(name = "League Gothic", family = "snes")
  }

  # CUSTOM THEME:
  ggplot2::theme(
    plot.background = element_rect(fill = snes_theme_colors["background"]),
    text = element_text(color = snes_theme_colors["text"], family = font_family),
    title = element_text(size = 20),
    panel.grid.minor = element_blank(),
    panel.grid.major = element_blank(),
    panel.background = element_rect(fill = snes_theme_colors["panel"], color = snes_theme_colors["medium"]),
    panel.border = element_rect(fill = NA, color = snes_theme_colors["border"], linewidth = 1.2),
    axis.title = element_text(size = 22),
    axis.text = element_text(size = 18, color = snes_theme_colors["text"]),
    axis.ticks = element_line(color = snes_theme_colors["border"], linewidth = 1),
    legend.background = element_rect(fill = snes_theme_colors["panel"], color = NA),
    legend.text = element_text(size = 16, color = snes_theme_colors["text"]),
    strip.background = element_rect(fill = snes_theme_colors["lighter"], colour = snes_theme_colors["border"]),
    strip.text = element_text(colour = snes_theme_colors["strip_text"], size = 14)
  )
}

# COLOR SCALES: Make pretty color scales

#' Super Nintendo Inspired Color Scales
#'
#' @param ... Additional arguments to pass to `ggplot2::binned_scale` for `_b`,
#' `ggplot2::scale_[fill/color]_gradient` for `_c`, or `ggplot2::discrete_scale`
#' for `_d`
#'
#' @return a `ggplot` scale object
#'
#' @rdname scale_snes
#' @export
#'
#' @examples
#' library(ggplot2)
#'
#' ggplot(mpg, aes(cty)) +
#'   geom_density(aes(fill=factor(cyl)), alpha=0.8) +
#'   labs(title="Density plot",
#'        subtitle="City Mileage Grouped by Number of cylinders",
#'        caption="Source: mpg",
#'        x="City Mileage",
#'        fill="# Cylinders") +
#'   facet_wrap(~(hwy > 29)) +
#'   theme_snes() +
#'   scale_fill_snes_d()
#'
#' ggplot(mpg) +
#'   geom_point(aes(x = cty, y  = hwy, color = year)) +
#'   labs(title = 'Mileage comparisons',
#'     x = 'City Mileage', y = 'Highway Mileage', color = 'Year') +
#'   theme_snes() +
#'   scale_color_snes_c()
#'
scale_color_snes_c <- function(...) {
  ggplot2::scale_color_gradient(..., low = snes_theme_colors["light"], high = snes_theme_colors["dark"])
}

#' @rdname scale_snes
#' @export
scale_fill_snes_c <- function(...) {
  ggplot2::scale_fill_gradient(..., low = snes_theme_colors["light"], high = snes_theme_colors["dark"])
}

#' @rdname scale_snes
#' @export
scale_color_snes_b <- function(...) {
  if (!requireNamespace('scales', quietly = TRUE)) {
    stop('This function requires the `scales` R package.')
  }
  ramp <- scales::colour_ramp(c(snes_theme_colors["light"], snes_theme_colors["dark"]))
  ggplot2::binned_scale('color', 'snes', palette = ramp, ...)
}

#' @rdname scale_snes
#' @export
scale_fill_snes_b <- function(...) {
  if (!requireNamespace('scales', quietly = TRUE)) {
    stop('This function requires the `scales` R package.')
  }
  ramp <- scales::colour_ramp(c(snes_theme_colors["light"], snes_theme_colors["dark"]))
  ggplot2::binned_scale('fill', 'snes', palette = ramp, ...)
}

#' @rdname scale_snes
#' @export
scale_color_snes_d <- function(...) {
  ggplot2::discrete_scale(aesthetics = 'color',
                          palette = rot_pal(snes_palette), ...)
}

#' @rdname scale_snes
#' @export
scale_fill_snes_d <- function(...) {
  ggplot2::discrete_scale(aesthetics = 'fill', ...,
                          palette = rot_pal(snes_palette))
}

#' @rdname scale_snes
#' @export
scale_colour_snes_d <- scale_color_snes_d

#' @rdname scale_snes
#' @export
scale_colour_snes_c <- scale_color_snes_c

#' @rdname scale_snes
#' @export
scale_colour_snes_b <- scale_color_snes_b
