## Christopher T. Kenny
## theme_nemo
## 2023-07-27

# COLOR: add, remove, or edit the colors to fit your scheme. Names should be
#' Finding Nemo Theme Color Palette
#'
#' @format character vector of hex code strings
#' @export
#' @concept nemo
#'
#' @examples
#' nemo_theme_colors
#'
nemo_theme_colors <- c(
  background = '#0739B9',
  text       = '#FEFFFE',
  fill       = '#00B4EF',
  panel      = '#FDF122',
  strip_text = '#010203',
  border     = '#000000',
  lighter    = '#FDF122',
  light      = 'white',
  medium     = '#FE691D',
  dark       = '#FA3C2E'
)

# DISCRETE PALETTE COLORS: Please update to some colors that work with your theme
#' Finding Nemo Color Palette
#'
#' @format character vector of hex code strings
#' @export
#' @concept nemo
#'
#' @examples
#' nemo_palette
#'
nemo_palette <- c(
  '#E9F4FB', '#FE691D', '#015DC2', '#FCDD2E', '#7867A0',
  '#BE1D57', '#798A5A', '#005478','#1B1A3D'
)

#' Finding Nemo Inspired Theme
#'
#' @param nemo_font should `theme_nemo` use Google Font's Bowlby One SC? Default is `TRUE`.
#' @param ... additional parameters to pass to `ggplot2::theme()`
#'
#' @return a `ggplot2` `theme` element
#' @export
#' @concept nemo
#'
#' @examples
#' library(ggplot2)
#'
#' ggplot(data = data.frame(x = rnorm(50, 0, 1), y = rnorm(50,0,1)), aes(x = x, y = y)) +
#'   geom_smooth(method = 'lm') +
#'   geom_point() +
#'   labs(title = 'Nemo Scatter Plot') +
#'   theme_nemo()
#'
#' ggplot(mpg, aes(cty)) +
#' geom_density(aes(fill=factor(cyl)), alpha=0.8) +
#'   labs(title="Density plot",
#'        subtitle="City Mileage Grouped by Number of cylinders",
#'        caption="Source: mpg",
#'        x="City Mileage",
#'        fill="# Cylinders") +
#'   theme_nemo() +
#'   scale_fill_nemo_d()
#'
#'
theme_nemo <- function(nemo_font = TRUE, ...) {

  # CUSTOM FONT: add a custom font from google fonts
  font_family <- ifelse(nemo_font, 'Bowlby One SC', 'sans') # use this line if you have a custom font
  if (nemo_font) {
    initialize_font(name = "Bowlby One SC")
  }

  # CUSTOM THEME:
  ggplot2::theme(
    plot.background = element_rect(fill = nemo_theme_colors["background"]),
    text = element_text(color = nemo_theme_colors["text"], family = font_family),
    title = element_text(size = 20),
    panel.grid.minor = element_blank(),
    panel.grid.major = element_blank(),
    panel.background = element_rect(fill = nemo_theme_colors["fill"], color = nemo_theme_colors["panel"]),
    panel.border = element_rect(fill = NA, color = nemo_theme_colors["border"], linewidth = 1.2),
    axis.title = element_text(size = 17),
    axis.text = element_text(size = 13, color = nemo_theme_colors["text"]),
    axis.ticks = element_line(color = nemo_theme_colors["border"], linewidth = 1),
    legend.background = element_rect(fill = nemo_theme_colors["fill"], color = NA),
    strip.background = element_rect(fill = nemo_theme_colors["lighter"], colour = nemo_theme_colors["border"]),
    strip.text = element_text(colour = nemo_theme_colors["strip_text"], size = 10),
    ...
  )
}

# COLOR SCALES: Make pretty color scales

#' Finding Nemo Inspired Color Scales
#'
#' @param ... Additional arguments to pass to `ggplot2::binned_scale` for `_b`,
#' `ggplot2::scale_[fill/color]_gradient` for `_c`, or `ggplot2::discrete_scale`
#' for `_d`
#'
#' @return a `ggplot` scale object
#'
#' @rdname scale_nemo
#' @export
#' @concept nemo
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
#'   theme_nemo(nemo_font = TRUE) +
#'   scale_fill_nemo_d()
#'
scale_color_nemo_c <- function(...) {
  ggplot2::scale_color_gradient(..., low = nemo_theme_colors["light"], high = nemo_theme_colors["dark"])
}

#' @rdname scale_nemo
#' @export
#' @concept nemo
scale_fill_nemo_c <- function(...) {
  ggplot2::scale_fill_gradient(..., low = nemo_theme_colors["light"], high = nemo_theme_colors["dark"])
}

#' @rdname scale_nemo
#' @export
#' @concept nemo
scale_color_nemo_b <- function(...) {
  if (!requireNamespace('scales', quietly = TRUE)) {
    stop('This function requires the `scales` R package.')
  }
  ramp <- scales::colour_ramp(c(nemo_theme_colors["light"], nemo_theme_colors["dark"]))
  ggplot2::binned_scale('color', 'nemo', palette = ramp, ...)
}

#' @rdname scale_nemo
#' @export
#' @concept nemo
scale_fill_nemo_b <- function(...) {
  if (!requireNamespace('scales', quietly = TRUE)) {
    stop('This function requires the `scales` R package.')
  }
  ramp <- scales::colour_ramp(c(nemo_theme_colors["light"], nemo_theme_colors["dark"]))
  ggplot2::binned_scale('fill', 'nemo', palette = ramp, ...)
}

#' @rdname scale_nemo
#' @export
#' @concept nemo
scale_color_nemo_d <- function(...) {
  ggplot2::discrete_scale(aesthetics = 'color',
                          palette = rot_pal(nemo_palette), ...)
}

#' @rdname scale_nemo
#' @export
#' @concept nemo
scale_fill_nemo_d <- function(...) {
  ggplot2::discrete_scale(aesthetics = 'fill', ...,
                          palette = rot_pal(nemo_palette))
}

#' @rdname scale_nemo
#' @export
#' @concept nemo
scale_colour_nemo_d <- scale_color_nemo_d

#' @rdname scale_nemo
#' @export
#' @concept nemo
scale_colour_nemo_c <- scale_color_nemo_c

#' @rdname scale_nemo
#' @export
#' @concept nemo
scale_colour_nemo_b <- scale_color_nemo_b
