## Matthew B Jané
## theme_barbie
## 06/24/2023

# COLOR: add, remove, or edit the colors to fit your scheme. Names should be
text_color_barbie    <- '#a62675ff'
panel_color_barbie   <- '#fdf6faff'
border_color_barbie  <- '#d74ea2ff'
lighter_color_barbie <- '#f5d1e6ff'
light_color_barbie   <- '#eeb4d7ff'
medium_color_barbie  <- '#d74ea2ff'
dark_color_barbie    <- '#bf2986ff'


# THEME: rename function and theme() arguments according to your theme design, feel free to edit this how you would like

#' Barbie Inspired Theme
#'
#' @param barbie_font should `theme_barbie` use Google Font's Sansita Swashed? Default is `FALSE`.
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
#'   labs(title = 'Barbie Scatter Plot') +
#'   theme_barbie(barbie_font = TRUE)
#'
theme_barbie <- function(barbie_font = FALSE){

  # CUSTOM FONT: add a custom font from google fonts
  font_family = ifelse(barbie_font,"barbie","Arial") # use this line if you have a custom font
  if (barbie_font) {
    initialize_font(name = "Sansita Swashed", family = "barbie")
  }

  # CUSTOM THEME:
  ggplot2::theme(
        panel.grid.minor = element_blank(),
        panel.grid.major = element_blank(),
        text = element_text(color = text_color_barbie, family = font_family),
        title = element_text(size=20),
        panel.background = element_rect(fill = panel_color_barbie),
        panel.border = element_rect(fill = NA, color = border_color_barbie,linewidth=1.2),
        axis.title = element_text(size=17),
        axis.text = element_text(size=13,color = text_color_barbie),
        axis.ticks = element_line(color = border_color_barbie,linewidth=1),
        legend.background = element_rect(fill = panel_color_barbie, color = NA),
        strip.background = element_rect(fill = lighter_color_barbie, colour = border_color_barbie),
        strip.text = element_text(colour = text_color_barbie)
       )
}

# COLOR SCALES: Make pretty color scales

#' Barbie Inspired Color Scales
#'
#' @param ... Additional arguments to pass to `ggplot2::scale_[fill/color]_gradient()`
#'
#' @return a `ggplot` scale object
#'
#' @rdname scale_barbie
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
#'   scale_color_barbie()
#'
scale_fill_barbie <- function(...) {
  ggplot2::scale_fill_gradient(low = '#eeb4d7ff', high = '#bf2986ff', ...)
}

#' @rdname scale_barbie
#' @export
scale_color_barbie <- function(...) {
  ggplot2::scale_color_gradient(low = '#eeb4d7ff', high = '#bf2986ff', ...)
}



