## Matthew B Jané
## theme_barbie
## 07/24/2023

#' Oppenheimer Theme Color Palette
#'
#' @format character vector of hex code strings
#' @export
#'
#' @examples
#' oppenheimer_theme_colors
#'
oppenheimer_theme_colors <- c(
  coolflame = '#fdc232ff',
  flame     = '#fd8532ff',
  hotflame  = '#fd4b32ff',
  panel     = '#222222ff',
  border    = '#000000ff',
  lightmain = '#eeb4d7ff',
  text      = '#393939ff',
  light     = '#6b6b6bff',
  medium    = '#323232ff',
  dark      = '#000000ff'
)


#' Oppenheimer Inspired Theme
#'
#' @param oppenheimer_font should `theme_oppenheimer` use Google Font's IM Fell English? Default is `FALSE`.
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
#'   labs(title = 'Oppenheimer Scatter Plot') +
#'   theme_oppenheimer(oppenheimer_font = TRUE)
#'
#' ggplot(mpg, aes(cty)) +
#' geom_density(aes(fill=factor(cyl)), alpha=0.8) +
#'   labs(title="Density plot",
#'        subtitle="City Mileage Grouped by Number of cylinders",
#'        caption="Source: mpg",
#'        x="City Mileage",
#'        fill="# Cylinders") +
#'   theme_oppenheimer(oppenheimer_font = TRUE)
#'
theme_oppenheimer <- function(oppenheimer_font=FALSE, ...){

  # CUSTOM FONT: add a custom font from google fonts
  font_family <- ifelse(oppenheimer_font,"Oppenheimer", "sans") # use this line if you have a custom font
  if (oppenheimer_font) {
    initialize_font(name = "IM Fell English", family = "Oppenheimer")
  }

  # CUSTOM THEME:
  ggplot2::theme(
    panel.grid.minor = element_blank(),
    panel.grid.major = element_blank(),
    text = element_text(color = oppenheimer_theme_colors["text"], family = font_family),
    title = element_text(size=20),
    panel.background = element_rect(fill = oppenheimer_theme_colors["panel"]),
    panel.border = element_rect(fill = NA, color = oppenheimer_theme_colors["border"],linewidth=1.4),
    axis.title = element_text(size=17),
    axis.text = element_text(size=15,color = oppenheimer_theme_colors["text"]),
    axis.ticks = element_line(color = oppenheimer_theme_colors["border"],linewidth=1),
    legend.background = element_rect(fill = oppenheimer_theme_colors["panel"], color = NA),
    strip.background = element_rect(fill = oppenheimer_theme_colors["light"], colour = oppenheimer_theme_colors["light"]),
    strip.text = element_text(colour = oppenheimer_theme_colors["text"]),
    ...
  )
}


#' Oppenheimer Inspired Color Scales
#'
#' @param ... Additional arguments to pass to `ggplot2::scale_[fill/color]_gradient()`
#'
#' @return a `ggplot` scale object
#'
#' @rdname scale_oppenheimer
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
#'   scale_color_oppenheimer_flame()
#'
#'   #' ggplot(mpg) +
#'   geom_point(aes(y = class, x = hwy, color = cyl)) +
#'   labs(title="MPG by Vehicle Type",
#'        caption="Source: mpg",
#'        x = "City Mileage",
#'        color ="# Cylinders") +
#'   scale_color_oppenheimer_flame()
#'
scale_fill_oppenheimer_smoke <- function(...) {
  ggplot2::scale_fill_gradient(low = oppenheimer_theme_colors["coolflame"], high = oppenheimer_theme_colors["hotflame"], ...)
}

#' @rdname scale_oppenheimer
#' @export
scale_color_oppenheimer_smoke <- function(...) {
  ggplot2::scale_color_gradient(low = oppenheimer_theme_colors["coolflame"], high = oppenheimer_theme_colors["hotflame"], ...)
}

#' @rdname scale_oppenheimer
#' @export
scale_fill_oppenheimer_flame  <- function(...) {
  ggplot2::scale_fill_gradient(low = oppenheimer_theme_colors["light"], high = oppenheimer_theme_colors["dark"], ...)
}

#' @rdname scale_oppenheimer
#' @export
scale_color_oppenheimer_flame <- function(...) {
  ggplot2::scale_color_gradient(low = oppenheimer_theme_colors["light"], high = oppenheimer_theme_colors["dark"], ...)
}
