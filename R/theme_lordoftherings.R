## Ethan Milne
## theme_lordoftherings
## 24/07/2023

# COLOR: add, remove, or edit the colors to fit your scheme (hex code preferred, but you can use any type). Names should be
text_color_lordoftherings    <- '#020203'
panel_color_lordoftherings   <- '#e0dcce'
border_color_lordoftherings  <- '#ab8d59'
lighter_color_lordoftherings <- '#6bb49e'
light_color_lordoftherings   <- '#89b498'
medium_color_lordoftherings  <- '#559468'
dark_color_lordoftherings    <- '#34684f'
sauron_palette <- c('#fcd882', '#e8a578','#df7b75','#4e2828','#180109')

# THEME: rename function and theme() arguments according to your theme design, feel free to edit this how you would like

#' Lord of the Rings Inspired Theme
#'
#' @param lordoftherings_font should `theme_lordoftherings` use Google Font's Lugrasimo? Default is `FALSE`.
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
#'   labs(title = 'Lord of the Rings Scatter Plot') +
#'   theme_lordoftherings(lordoftherings_font = TRUE)
#'
#' ggplot(mpg, aes(cty)) +
#' geom_density(aes(fill=factor(cyl)), alpha=0.8) +
#'   labs(title="Density plot",
#'        subtitle="City Mileage Grouped by Number of cylinders",
#'        caption="Source: mpg",
#'        x="City Mileage",
#'        fill="# Cylinders") +
#'   theme_lordoftherings(lordoftherings_font = TRUE)
#'
theme_lordoftherings <- function(lordoftherings_font = FALSE){

  # CUSTOM FONT: add a custom font from google fonts
  font_family = ifelse(lordoftherings_font,"lordoftherings","Arial") # use this line if you have a custom font
  if (lordoftherings_font) {
    initialize_font(name = "Lugrasimo", family = "lordoftherings")
  }

  # CUSTOM THEME:
  ggplot2::theme(
    panel.grid.minor = element_blank(),
    panel.grid.major = element_blank(),
    text = element_text(color = text_color_lordoftherings, family = font_family),
    title = element_text(size=20),
    panel.background = element_rect(fill = panel_color_lordoftherings),
    panel.border = element_rect(fill = NA, color = border_color_lordoftherings, size = 2),
    axis.title = element_text(size=17),
    axis.text = element_text(size=13),
    axis.ticks = element_line(color = border_color_lordoftherings, size = 1.2),
    legend.background = element_rect(fill = panel_color_lordoftherings, color = NA)
  )
}

# COLOR SCALES: Make pretty color scales

#' Lord of the Rings Inspired Color Scales
#'
#' @param ... Additional arguments to pass to `ggplot2::scale_[fill/color]_gradient()`
#'
#' @return a `ggplot` scale object
#'
#' @rdname scale_lordoftherings
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
#'   scale_color_lordoftherings()
#'
scale_fill_lordoftherings <- function(...) {
  ggplot2::scale_fill_gradient(low = lighter_color_lordoftherings, high = dark_color_lordoftherings, ...)
}

#' @rdname scale_lordoftherings
#' @export
scale_color_lordoftherings <- function(...) {
  ggplot2::scale_color_gradient(low = lighter_color_lordoftherings, high = dark_color_lordoftherings, ...)
}

