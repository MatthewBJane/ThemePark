## Velu P K Immonen
## theme_spiderman
## 07/25/2023

# COLOR: add, remove, or edit the colors to fit your scheme (hex code preferred, but you can use any type). Names should be
text_color_spiderman    <- '#101010'
panel_color_spiderman   <- '#de0619'
border_color_spiderman  <- '#101010'
light_color_spiderman <- '#e27B78'
medium_color_spiderman <- '#e55751'
dark_color_spiderman   <- '#601a18'
white_color_spiderman  <-  '#fefefe'
blue_color_spiderman    <- '#333399ff'


# THEME: rename function and theme() arguments according to your theme design, feel free to edit this how you would like

#' Spiderman Inspired Theme
#'
#' @param spiderman_font should `theme_spiderman` use Google Font's IM Fell English? Default is `FALSE`.
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
#'   theme_spiderman(spiderman_font = TRUE)
#'
#' ggplot(mpg, aes(cty)) +
#' geom_density(aes(fill=factor(cyl)), alpha=0.8) +
#'   labs(title="Density plot",
#'        subtitle="City Mileage Grouped by Number of cylinders",
#'        caption="Source: mpg",
#'        x="City Mileage",
#'        fill="# Cylinders") +
#'   theme_spiderman(spiderman_font = TRUE)
#'
theme_spiderman <- function(spiderman_font = FALSE){

  # CUSTOM FONT: add a custom font from google fonts
  font_family = ifelse(spiderman_font,"spiderman","Arial") # use this line if you have a custom font
  if (spiderman_font) {
    initialize_font(name = "Bangers", family = "spiderman")
  }

  # CUSTOM THEME:
  ggplot2::theme(
    panel.grid.minor = element_blank(),
    panel.grid.major = element_line(color = '#00000055'),
    text = element_text(color = text_color_spiderman, family = font_family),
    title = element_text(size=20),
    panel.background = element_rect(fill = panel_color_spiderman),
    panel.border = element_rect(fill = NA, color = border_color_spiderman,linewidth=1.2),
    axis.title = element_text(size=17),
    axis.text = element_text(size=13,color = text_color_spiderman),
    axis.ticks = element_line(color = border_color_spiderman,linewidth=1),
    legend.background = element_rect(fill = panel_color_spiderman, color = NA),
    strip.background = element_rect(fill = medium_color_spiderman, colour = blue_color_spiderman),
    strip.text = element_text(colour = text_color_spiderman)
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
  ggplot2::scale_fill_gradient(low = medium_color_spiderman, high = blue_color_spiderman, ...)
}

#' @rdname scale_spiderman
#' @export
scale_color_spiderman <- function(...) {
  ggplot2::scale_color_gradient(low = medium_color_spiderman, high = blue_color_spiderman, ...)
}
