## Velu P K Immonen
## theme_avatar
## 07/26/2023

# COLOR: add, remove, or edit the colors to fit your scheme (hex code preferred, but you can use any type). Names should be
border_color_avatar  <- '#0F2347'
dark_color_avatar    <- '#1C3F6E'
medium_color_avatar  <- '#2E67A0'
light_color_avatar   <- '#5AACCF'
point_color_avatar   <- '#EFFC93'


# THEME: rename function and theme() arguments according to your theme design, feel free to edit this how you would like

#' Avatar Inspired Theme
#'
#' @param avatar_font should `theme_avatar` use Google Font's IM Fell English? Default is `FALSE`.
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
#'   labs(title = 'Avatar Scatter Plot') +
#'   theme_avatar(avatar_font = TRUE)
#'
#' ggplot(mpg, aes(cty)) +
#' geom_density(aes(fill=factor(cyl)), alpha=0.8) +
#'   labs(title="Density plot",
#'        subtitle="City Mileage Grouped by Number of cylinders",
#'        caption="Source: mpg",
#'        x="City Mileage",
#'        fill="# Cylinders") +
#'   theme_avatar(avatar_font = TRUE)
#'
theme_avatar <- function(avatar_font = FALSE, ...){
  # CUSTOM FONT: add a custom font from google fonts
  font_family = ifelse(avatar_font,"avatar","Arial") # use this line if you have a custom font
  if (avatar_font) {
    initialize_font(name = "IM Fell English", family = "avatar")
  }

  # CUSTOM THEME:
  ggplot2::theme(
    panel.grid.minor = element_blank(),
    panel.grid.major = element_blank(),
    text = element_text(color = border_color_avatar, family = font_family),
    title = element_text(size=20),
    panel.background = element_rect(fill = dark_color_avatar),
    panel.border = element_rect(fill = NA, color = border_color_avatar,linewidth=1.2),
    axis.title = element_text(size=17),
    axis.text = element_text(size=13,color = border_color_avatar),
    axis.ticks = element_line(color = border_color_avatar,linewidth=1),
    legend.background = element_rect(fill = dark_color_avatar, color = NA),
    strip.background = element_rect(fill = point_color_avatar, colour = border_color_avatar),
    strip.text = element_text(colour = border_color_avatar)
  )
}

# COLOR SCALES: Make pretty color scales

#' Avatar Inspired Color Scales
#'
#' @param ... Additional arguments to pass to `ggplot2::scale_[fill/color]_gradient()`
#'
#' @return a `ggplot` scale object
#'
#' @rdname scale_avatar
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
#'   scale_color_avatar()
#'
scale_fill_avatar <- function(...) {
  ggplot2::scale_fill_gradient(low = medium_color_avatar, high = dark_color_avatar, ...)
}

#' @rdname scale_avatar
#' @export
scale_color_avatar <- function(...) {
  ggplot2::scale_color_gradient(low = medium_color_avatar, high = dark_color_avatar, ...)
}
