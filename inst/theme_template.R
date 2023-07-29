
## Template v2.1 for themes in `theme_park` https://github.com/MatthewBJane/theme_park   <<<  Remove this line

## YOUR NAME
## theme_XXXX
## Date Created

# COLOR: add, remove, or edit the colors to fit your scheme. Names should be
background_color_XXXX <- '#0739B9'
text_color_XXXX       <- '#FEFFFE'
panel_fill_XXXX       <- '#00B4EF'
panel_color_XXXX      <- '#FDF122'
strip_text_XXXX       <- '#010203'
border_color_XXXX     <- '#000000'
lighter_color_XXXX    <- '#FDF122' #'#E2F2FD'
light_color_XXXX      <- 'white' #'#F6F1F2'
medium_color_XXXX     <- '#FE691D'
dark_color_XXXX       <- '#FA3C2E'


#' XXXX Inspired Theme
#'
#' @param XXXX_font should `theme_XXXX` use custom font? Default is `TRUE`.
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
    plot.background = element_rect(fill = background_color_XXXX),
    text = element_text(color = text_color_XXXX, family = font_family),
    title = element_text(size = 20),
    panel.grid.minor = element_blank(),
    panel.grid.major = element_blank(),
    panel.background = element_rect(fill = panel_fill_XXXX, color = panel_color_XXXX),
    panel.border = element_rect(fill = NA, color = border_color_XXXX, linewidth = 1.2),
    axis.title = element_text(size = 17),
    axis.text = element_text(size = 13, color = text_color_XXXX),
    axis.ticks = element_line(color = border_color_XXXX, linewidth = 1),
    legend.background = element_rect(fill = panel_fill_XXXX, color = NA),
    strip.background = element_rect(fill = lighter_color_XXXX, colour = border_color_XXXX),
    strip.text = element_text(colour = strip_text_XXXX, size = 10)
  )
}

# COLOR SCALES: Make pretty color scales

#' Finding XXXX Inspired Color Scales
#'
#' @param ... Additional arguments to pass to `ggplot2::binned_scale` for `_b`,
#' `ggplot2::scale_[fill/color]_gradient` for `_c`, or `ggplot2::discrete_scale`
#'
#' @return description
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
  ggplot2::scale_color_gradient(..., low = light_color_XXXX, high = dark_color_XXXX)
}

#' @rdname scale_XXXX
#' @export
scale_fill_XXXX_c <- function(...) {
  ggplot2::scale_fill_gradient(..., low = light_color_XXXX, high = dark_color_XXXX)
}

#' @rdname scale_XXXX
#' @export
scale_color_XXXX_b <- function(...) {
  if (!requireNamespace('scales', quietly = TRUE)) {
    stop('This function requires the `scales` R package.')
  }
  ramp <- scales::colour_ramp(c(light_color_XXXX, dark_color_XXXX))
  ggplot2::binned_scale('color', 'XXXX', palette = ramp, ...)
}

#' @rdname scale_XXXX
#' @export
scale_fill_XXXX_b <- function(...) {
  if (!requireNamespace('scales', quietly = TRUE)) {
    stop('This function requires the `scales` R package.')
  }
  ramp <- scales::colour_ramp(c(light_color_XXXX, dark_color_XXXX))
  ggplot2::binned_scale('fill', 'XXXX', palette = ramp, ...)
}

XXXX_colors <- c(
  '#E9F4FB', '#FE691D', '#015DC2', '#FCDD2E', '#7867A0',
  '#BE1D57', '#798A5A', '#005478','#1B1A3D'
)

#' @rdname scale_XXXX
#' @export
scale_color_XXXX_d <- function(...) {
  ggplot2::discrete_scale(aesthetics = 'color', scale_name = XXXX_colors,
                          palette = rot_pal(XXXX_colors), ...)
}

#' @rdname scale_XXXX
#' @export
scale_fill_XXXX_d <- function(...) {
  ggplot2::discrete_scale(aesthetics = 'fill', scale_name = XXXX_colors, ...,
                          palette = rot_pal(XXXX_colors))
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
