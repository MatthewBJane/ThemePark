## Matthew B Jané
## theme_starwars
## 06/24/2023

#' Star Wars Theme Color Palette
#'
#' @format character vector of hex code strings
#' @export
#'
#' @examples
#' starwars_theme_colors
#'
starwars_theme_colors <- c(
  panel     = '#000000ff',
  border    = '#ffffffff',
  lightmain = '#eeb4d7ff',
  text      = '#f1e81fff',
  goldtext  = '#f1e81fff',
  darktext  = '#111111ff',
  star      = '#ffffffff',
  light     = '#faf7b5ff',
  medium    = '#f1e81fff',
  dark      = '#989209ff'
)

#' Star Wars Inspired Theme
#'
#' @param starwars_font should `theme_starwars` use Google Font's IM Fell English? Default is `FALSE`.
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
#'   labs(title = 'Star Wars Scatter Plot') +
#'   theme_starwars(starwars_font = TRUE)
#'
#' ggplot(mpg, aes(cty)) +
#' geom_density(aes(fill=factor(cyl)), alpha=0.8) +
#'   labs(title="Density plot",
#'        subtitle="City Mileage Grouped by Number of cylinders",
#'        caption="Source: mpg",
#'        x="City Mileage",
#'        fill="# Cylinders") +
#'   theme_starwars(starwars_font = TRUE)
#'
theme_starwars <- function(starwars_font=FALSE, ...){

  # CUSTOM FONT: add a custom font from google fonts
  font_family <- ifelse(starwars_font,"starwars", "sans") # use this line if you have a custom font
  if (starwars_font) {
    initialize_font(name = "Russo One", family = "starwars")
  }

  # CUSTOM THEME:
  ggplot2::theme(
        panel.grid.minor = element_blank(),
        panel.grid.major = element_blank(),
        text = element_text(color = starwars_theme_colors["goldtext"], family = font_family),
        title = element_text(size=20),
        panel.background = element_rect(fill = starwars_theme_colors["panel"]),
        panel.border = element_rect(fill = NA, color = starwars_theme_colors["border"],linewidth=1.4),
        axis.title = element_text(size=17),
        axis.text = element_text(size=15,color = starwars_theme_colors["goldtext"]),
        axis.ticks = element_line(color = starwars_theme_colors["border"],linewidth=1),
        legend.background = element_rect(fill = starwars_theme_colors["panel"], color = NA),
         plot.background = element_rect(fill = starwars_theme_colors["panel"]),
        strip.background = element_rect(fill = starwars_theme_colors["darktext"], colour = starwars_theme_colors["border"]),
        strip.text = element_text(colour = starwars_theme_colors["text"]),
        ...
       )
}

#' Star Wars Inspired Color Scales
#'
#' @param ... Additional arguments to pass to `ggplot2::scale_[fill/color]_gradient()`
#'
#' @return a `ggplot` scale object
#'
#' @rdname scale_starwars
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
#'   scale_color_starwars()+
#'   theme_starwars(starwars_font = TRUE)
#'
scale_fill_starwars <- function(...) {
  ggplot2::scale_fill_gradient(low = starwars_theme_colors["light"], high = starwars_theme_colors["dark"], ...)
}

#' @rdname scale_starwars
#' @export
scale_color_starwars <- function(...) {
  ggplot2::scale_color_gradient(low = starwars_theme_colors["light"], high = starwars_theme_colors["dark"], ...)
}
