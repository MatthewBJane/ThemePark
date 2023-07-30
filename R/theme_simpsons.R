## Tylor J Harlow
## theme_simpsons
## 06/25/2023

# COLOR: add, remove, or edit the colors to fit your scheme. Names should be
text_color_simpsons    <- '#3498dbff'
panel_color_simpsons   <- '#f7dc6fff'
border_color_simpsons  <- '#3498dbff'
lighter_color_simpsons <- '#fdfefeff'
light_color_simpsons   <- '#1e8449ff'
medium_color_simpsons  <- '#9c5b01ff'
dark_color_simpsons    <- '#1c2833ff'


# THEME: rename function and theme() arguments according to your theme design, feel free to edit this how you would like

#' Simpsons Inspired Theme
#'
#' @param simpsons_font should `theme_simpsons` use Google Font's IM Fell English? Default is `FALSE`.
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
#'   labs(title = 'Simpsons Scatter Plot') +
#'   theme_simpsons(simpsons_font = TRUE)
#'
#' ggplot(mpg, aes(cty)) +
#' geom_density(aes(fill=factor(cyl)), alpha=0.8) +
#'   labs(title="Density plot",
#'        subtitle="City Mileage Grouped by Number of cylinders",
#'        caption="Source: mpg",
#'        x="City Mileage",
#'        fill="# Cylinders") +
#'   theme_simpsons(simpsons_font = TRUE)
#'
theme_simpsons <- function(simpsons_font = FALSE){

  # CUSTOM FONT: add a custom font from google fonts
  font_family = ifelse(simpsons_font,"simpsons","Arial") # use this line if you have a custom font
  if (simpsons_font) {
    initialize_font(name = "Rock Salt", family = "simpsons")
  }

  # CUSTOM THEME:
  ggplot2::theme(
    panel.grid.minor = element_blank(),
    panel.grid.major = element_blank(),
    text = element_text(color = text_color_simpsons, family = font_family),
    title = element_text(size=20),
    panel.background = element_rect(fill = panel_color_simpsons),
    panel.border = element_rect(fill = NA, color = border_color_simpsons,linewidth=2),
    axis.title = element_text(size=17),
    axis.text = element_text(size=13,color = text_color_simpsons),
    axis.ticks = element_line(color = border_color_simpsons,linewidth=1.7),
    legend.background = element_rect(fill = panel_color_simpsons, color = NA),
    strip.background = element_rect(fill = lighter_color_simpsons, colour = border_color_simpsons),
    strip.text = element_text(colour = text_color_simpsons)
  )
}

# COLOR SCALES: Make pretty color scales

# CTK: these are identical to barbie's
# #' Simpsons Inspired Color Scales
# #'
# #' @param ... Additional arguments to pass to `ggplot2::scale_[fill/color]_gradient()`
# #'
# #' @return a `ggplot` scale object
# #'
# #' @rdname scale_simpsons
# #' @export
# #'
# #' @examples
# #' library(ggplot2)
# #'
# #' ggplot(mpg) +
# #'   geom_point(aes(y = class, x = hwy, color = cyl)) +
# #'   labs(title="MPG by Vehicle Type",
# #'        caption="Source: mpg",
# #'        x = "City Mileage",
# #'        color ="# Cylinders") +
# #'   scale_color_simpsons()
# #'
# scale_fill_simpsons <- function(...) {
#   ggplot2::scale_fill_gradient(low = '#eeb4d7ff', high = '#bf2986ff', ...)
# }
#
# #' @rdname scale_simpsons
# #' @export
# scale_color_simpsons <- function(...) {
#   ggplot2::scale_color_gradient(low = '#eeb4d7ff', high = '#bf2986ff', ...)
# }
