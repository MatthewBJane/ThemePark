## Brennan Antone
## theme_gameofthrones
## 07/26/2023

# COLOR: add, remove, or edit the colors to fit your scheme (hex code preferred, but you can use any type). Names should be
background_color_gameofthrones    <- '#1f0700'
text_color_gameofthrones <- '#D7B257'
panel_color_gameofthrones <- '#F2F3B8'
border_color_gameofthrones  <- '#BD6D33'
lighter_color_gameofthrones <- '#F2F3B8'
light_color_gameofthrones   <- '#DFCB69'
medium_color_gameofthrones  <- '#BD6D33'
dark_color_gameofthrones <- '#8C4522'

#' Game of Thrones Inspired Theme
#'
#' @param gameofthrones_font should `theme_gameofthrones` use Google Font's Cinzel? Default is `FALSE`.
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
#'   labs(title = 'Game of Thrones Scatter Plot') +
#'   theme_gameofthrones(gameofthrones_font = TRUE)
#'
#' ggplot(mpg, aes(cty)) +
#' geom_density(aes(fill=factor(cyl)), alpha=0.8) +
#'   labs(title="Density plot",
#'        subtitle="City Mileage Grouped by Number of cylinders",
#'        caption="Source: mpg",
#'        x="City Mileage",
#'        fill="# Cylinders") +
#'   theme_gameofthrones(gameofthrones_font = TRUE)
#'
theme_gameofthrones <- function(gameofthrones_font = TRUE){

  # CUSTOM FONT: add a custom font from google fonts
  font_family = ifelse(gameofthrones_font,"gameofthrones","Arial") # use this line if you have a custom font
  if (gameofthrones_font) {
    initialize_font(name="Cinzel", family="gameofthrones")
  }

  # CUSTOM THEME:
  ggplot2::theme(
    plot.background = element_rect(fill = background_color_gameofthrones),
    panel.grid.minor = element_blank(),
    panel.grid.major = element_blank(),
    text = element_text(color = text_color_gameofthrones, family = font_family),
    title = element_text(size=20),
    panel.background = element_rect(fill = panel_color_gameofthrones),
    panel.border = element_rect(fill = NA, color = border_color_gameofthrones,linewidth=1.2),
    axis.title = element_text(size=17),
    axis.text = element_text(size=13,color = text_color_gameofthrones),
    axis.ticks = element_line(color = border_color_gameofthrones,linewidth=1),
    legend.background = element_rect(fill = panel_color_gameofthrones, color = NA),
    strip.background = element_rect(fill = lighter_color_gameofthrones, colour = border_color_gameofthrones),
    strip.text = element_text(colour = text_color_gameofthrones)
  )
}

# COLOR SCALES: Make pretty color scales
#' Game of Thrones Inspired Color Scales
#'
#' @param ... Additional arguments to pass to `ggplot2::scale_[fill/color]_gradient()`
#'
#' @return a `ggplot` scale object
#'
#' @rdname scale_gameofthrones
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
#'   scale_color_gameofthrones()
#'
scale_fill_gameofthrones <- function(...) {
  ggplot2::scale_fill_gradient(low = lighter_color_gameofthrones, high = dark_color_gameofthrones, ...)
}

#' @rdname scale_gameofthrones
#' @export
scale_color_gameofthrones <- function(...) {
  ggplot2::scale_color_gradient(low = lighter_color_gameofthrones, high = dark_color_gameofthrones, ...)
}
