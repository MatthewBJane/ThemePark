## Francisco Garre - Frutos
## theme_godfather
## 07/27/2023

text_color_godfather    <- '#d3cfc3'
panel_color_godfather   <- '#030303'
border_color_godfather  <- '#d3cfc3'
lighter_color_godfather <- '#d3cfc3'
light_color_godfather   <- '#912411'
medium_color_godfather  <- '#d3cfc3'
dark_color_godfather    <- '#912411'


#' Godfather Inspired Theme
#'
#' @param godfather_font should `theme_godfather` use Google Font's Philosopher? Default is `FALSE`.
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
#'   geom_point(color = 'white') +
#'   labs(title = 'Godfather Scatter Plot') +
#'   theme_godfather(godfather_font = TRUE)
#'
#' ggplot(mpg, aes(cty)) +
#' geom_density(aes(fill=factor(cyl)), alpha=0.8) +
#'   labs(title="Density plot",
#'        subtitle="City Mileage Grouped by Number of cylinders",
#'        caption="Source: mpg",
#'        x="City Mileage",
#'        fill="# Cylinders") +
#'   theme_godfather(godfather_font = TRUE)
#'
theme_godfather <- function(godfather_font = FALSE){

  # CUSTOM FONT: add a custom font from google fonts
  font_family = ifelse(godfather_font,"godfather","Arial") # use this line if you have a custom font
  if (godfather_font) {
    initialize_font(name = "Philosopher", family = "godfather")
  }

  # CUSTOM THEME:
  ggplot2::theme(
    panel.grid.minor = element_blank(),
    panel.grid.major = element_blank(),
    text = element_text(color = text_color_godfather, family = font_family),
    title = element_text(size=20),
    panel.background = element_rect(fill = panel_color_godfather),
    panel.border = element_rect(fill = NA, color = border_color_godfather,linewidth=1.2),
    plot.background = element_rect(fill = panel_color_godfather),
    axis.title = element_text(size=17),
    axis.text = element_text(size=13,color = text_color_godfather),
    axis.ticks = element_line(color = border_color_godfather,linewidth=1),
    legend.background = element_rect(fill = panel_color_godfather, color = NA),
    strip.background = element_rect(fill = lighter_color_godfather, colour = border_color_godfather),
    strip.text = element_text(colour = text_color_godfather)
  )
}

#' Godfather Inspired Color Scales
#'
#' @param ... Additional arguments to pass to `ggplot2::scale_[fill/color]_gradient()`
#'
#' @return a `ggplot` scale object
#'
#' @rdname scale_godfather
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
#'   scale_color_godfather() +
#'   theme_godfather(godfather_font = TRUE)
#'
scale_fill_godfather <- scale_fill_godfather <- function(...) {
  ggplot2::scale_fill_gradient(low = lighter_color_godfather, high = dark_color_godfather, ...)
}

#' @rdname scale_godfather
#' @export
scale_color_godfather <- function(...) {
  ggplot2::scale_color_gradient(low = lighter_color_godfather, high = dark_color_godfather, ...)
}
