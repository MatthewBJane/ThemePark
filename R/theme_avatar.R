## Velu P K Immonen
## theme_avatar
## 07/26/2023

# COLOR: add, remove, or edit the colors to fit your scheme (hex code preferred, but you can use any type). Names should be

#' Avatar Theme Color Palette
#'
#' @format character vector of hex code strings
#' @export
#'
#' @examples
#' avatar_theme_colors
#'
avatar_theme_colors <- c(
  border = '#0F2347',
  dark   = '#1C3F6E',
  medium = '#2E67A0',
  light  = '#5AACCF',
  point  = '#EFFC93'
)

# THEME: rename function and theme() arguments according to your theme design, feel free to edit this how you would like

#' Avatar Inspired Theme
#'
#' @param avatar_font should `theme_avatar` use Google Font's IM Fell English? Default is `TRUE`.
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
#'   theme_avatar()
#'
#' ggplot(mpg, aes(cty)) +
#' geom_density(aes(fill=factor(cyl)), alpha=0.8) +
#'   labs(title="Density plot",
#'        subtitle="City Mileage Grouped by Number of cylinders",
#'        caption="Source: mpg",
#'        x="City Mileage",
#'        fill="# Cylinders") +
#'   theme_avatar()
#'
theme_avatar <- function(avatar_font = TRUE, ...){
  # CUSTOM FONT: add a custom font from google fonts
  font_family = ifelse(avatar_font,"avatar","Arial") # use this line if you have a custom font
  if (avatar_font) {
    initialize_font(name = "IM Fell English", family = "avatar")
  }

  # CUSTOM THEME:
  ggplot2::theme(
    panel.grid.minor = element_blank(),
    panel.grid.major = element_blank(),
    text = element_text(color = avatar_theme_colors["border"], family = font_family),
    title = element_text(size=20),
    panel.background = element_rect(fill = avatar_theme_colors["dark"]),
    panel.border = element_rect(fill = NA, color = avatar_theme_colors["border"],linewidth=1.2),
    axis.title = element_text(size=17),
    axis.text = element_text(size=13,color = avatar_theme_colors["border"]),
    axis.ticks = element_line(color = avatar_theme_colors["border"],linewidth=1),
    legend.background = element_rect(fill = avatar_theme_colors["dark"], color = NA),
    strip.background = element_rect(fill = avatar_theme_colors["point"],
                                    colour = avatar_theme_colors["border"]),
    strip.text = element_text(colour = avatar_theme_colors["border"]),
    ...
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
  ggplot2::scale_fill_gradient(low = avatar_theme_colors["medium"], high = avatar_theme_colors["dark"], ...)
}

#' @rdname scale_avatar
#' @export
scale_color_avatar <- function(...) {
  ggplot2::scale_color_gradient(low = avatar_theme_colors["medium"], high = avatar_theme_colors["dark"], ...)
}
