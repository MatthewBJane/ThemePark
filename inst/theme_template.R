## Template v2.3 for themes in `theme_park` https://github.com/MatthewBJane/theme_park   <<<  Remove this line

## YOUR NAME
## theme_XXXX
## Date Created


# COLOR: add, remove, or edit the colors to fit your scheme (hex code preferred, but you can use any type). Names should be
#' XXXX Inspired Theme Color Palette
#'
#' @format character vector of hex code strings
#' @export
#' @concept XXXX
#'
#' @examples
#' XXXX_theme_colors
#'
XXXX_theme_colors <- c(
  background = '#000000',
  text       = '#F0F0F0',
  panel      = '#0B0C07',
  border     = '#81CF47',
  strip_text = '#000000',
  lighter    = '#CAF6A7',
  light      = '#ACF570',
  medium     = '#76D52F',
  dark       = '#1D6001'
)

# DISCRETE PALETTE COLORS: Please update to some colors that work with your theme
#' XXXX Inspired Color Palette
#'
#' @format character vector of hex code strings
#' @export
#' @concept XXXX
#'
#' @examples
#' XXXX_palette
#'
XXXX_palette <- c(
  '#E9F4FB', '#FE691D', '#015DC2', '#FCDD2E', '#7867A0',
  '#BE1D57', '#798A5A', '#005478','#1B1A3D'
)

#' XXXX Inspired Theme
#'
#' @param XXXX_font should `theme_XXXX` use custom font? Default is `TRUE`.
#' @param ... additional parameters to pass to `ggplot2::theme()`
#'
#' @return a `ggplot2` `theme` element
#' @export
#' @concept XXXX
#'
#' @examples
#' library(ggplot2)
#'
#' ggplot(data = data.frame(x = rnorm(50, 0, 1), y = rnorm(50,0,1)), aes(x = x, y = y)) +
#'   geom_smooth(method = 'lm') +
#'   geom_point() +
#'   labs(title = 'XXXX Scatter Plot') +
#'   theme_XXXX()
#'
#' ggplot(mpg, aes(cty)) +
#' geom_density(aes(fill=factor(cyl)), alpha=0.8) +
#'   labs(title="Density plot",
#'        subtitle="City Mileage Grouped by Number of cylinders",
#'        caption="Source: mpg",
#'        x="City Mileage",
#'        fill="# Cylinders") +
#'   theme_XXXX() +
#'   scale_fill_XXXX_d()
#'
#'
theme_XXXX <- function(XXXX_font = TRUE, ...) {

  # CUSTOM FONT: add a custom font from google fonts
  font_family <- ifelse(XXXX_font, 'XXXX', 'sans') # use this line if you have a custom font - change XXXX to match the font name used
  if (XXXX_font) {
    initialize_font(name = "GOOGLE FONT NAME", family = "XXXX")
  }

  # CUSTOM THEME:
  ggplot2::theme(
    plot.background = element_rect(fill = XXXX_theme_colors["background"]),
    text = element_text(color = XXXX_theme_colors["text"], family = font_family),
    title = element_text(size = 20),
    panel.grid.minor = element_blank(),
    panel.grid.major = element_blank(),
    panel.background = element_rect(fill = XXXX_theme_colors["panel"], color = XXXX_theme_colors["medium"]),
    panel.border = element_rect(fill = NA, color = XXXX_theme_colors["border"], linewidth = 1.2),
    axis.title = element_text(size = 17),
    axis.text = element_text(size = 13, color = XXXX_theme_colors["text"]),
    axis.ticks = element_line(color = XXXX_theme_colors["border"], linewidth = 1),
    legend.background = element_rect(fill = XXXX_theme_colors["panel"], color = NA),
    strip.background = element_rect(fill = XXXX_theme_colors["lighter"], colour = XXXX_theme_colors["border"]),
    strip.text = element_text(colour = XXXX_theme_colors["strip_text"], size = 10)
  )
}

# COLOR SCALES: Make pretty color scales

#' XXXX Inspired Color Scales
#'
#' @param ... Additional arguments to pass to `ggplot2::binned_scale` for `_b`,
#' `ggplot2::scale_[fill/color]_gradient` for `_c`, or `ggplot2::discrete_scale`
#' for `_d`
#'
#' @return a `ggplot` scale object
#'
#' @rdname scale_XXXX
#' @export
#'
#' @examples
#' library(ggplot2)
#'
#' ggplot(mpg, aes(cty)) +
#' geom_density(aes(fill=factor(cyl)), alpha=0.8) +
#'   labs(title="Density plot",
#'        subtitle="City Mileage Grouped by Number of cylinders",
#'        caption="Source: mpg",
#'        x="City Mileage",
#'        fill="# Cylinders") +
#'   facet_wrap(~(hwy > 29)) +
#'   theme_XXXX() +
#'   scale_fill_XXXX_d()
#'
scale_color_XXXX_c <- function(...) {
  ggplot2::scale_color_gradient(..., low = XXXX_theme_colors["light"], high = XXXX_theme_colors["dark"])
}

#' @rdname scale_XXXX
#' @export
scale_fill_XXXX_c <- function(...) {
  ggplot2::scale_fill_gradient(..., low = XXXX_theme_colors["light"], high = XXXX_theme_colors["dark"])
}

#' @rdname scale_XXXX
#' @export
scale_color_XXXX_b <- function(...) {
  if (!requireNamespace('scales', quietly = TRUE)) {
    stop('This function requires the `scales` R package.')
  }
  ramp <- scales::colour_ramp(c(XXXX_theme_colors["light"], XXXX_theme_colors["dark"]))
  ggplot2::binned_scale('color', 'XXXX', palette = ramp, ...)
}

#' @rdname scale_XXXX
#' @export
scale_fill_XXXX_b <- function(...) {
  if (!requireNamespace('scales', quietly = TRUE)) {
    stop('This function requires the `scales` R package.')
  }
  ramp <- scales::colour_ramp(c(XXXX_theme_colors["light"], XXXX_theme_colors["dark"]))
  ggplot2::binned_scale('fill', 'XXXX', palette = ramp, ...)
}
#' @rdname scale_XXXX
#' @export
scale_color_XXXX_d <- function(...) {
  ggplot2::discrete_scale(aesthetics = 'color',
                          palette = rot_pal(XXXX_palette), ...)
}

#' @rdname scale_XXXX
#' @export
scale_fill_XXXX_d <- function(...) {
  ggplot2::discrete_scale(aesthetics = 'fill', ...,
                          palette = rot_pal(XXXX_palette))
}

#' @rdname scale_XXXX
#' @export
scale_colour_XXXX_d <- scale_color_XXXX_d

#' @rdname scale_XXXX
#' @export
scale_colour_XXXX_c <- scale_color_XXXX_c

#' @rdname scale_XXXX
#' @export
scale_colour_XXXX_b <- scale_color_XXXX_b
