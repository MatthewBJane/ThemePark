## Luke Pilling
## theme_alien
## 2nd August 2023

# COLOR: add, remove, or edit the colors to fit your scheme (hex code preferred, but you can use any type). Names should be
#' ALIEN Theme Color Palette
#'
#' @format character vector of hex code strings
#' @export
#'
#' @examples
#' alien_theme_colors
#'
alien_theme_colors <- c(
  background = '#000000',
  text       = '#F0F0F0',
  panel      = '#0B0C07',
  border     = '#81CF47',
  lighter    = '#CAF6A7',
  light      = '#ACF570',
  medium     = '#76D52F',
  dark       = '#1D6001'
)

#' ALIEN Inspired Theme
#'
#' @param alien_font should `theme_alien` use Google Font's 'Roboto Condensed'? Default is `TRUE`.
#' @param ... additional parameters to pass to `ggplot2::theme()`
#'
#' @return a `ggplot2` `theme` element
#' @export
#'
#' @examples
#' library(ggplot2)
#'
#' ggplot(data = data.frame(x = rnorm(50, 0, 1), y = rnorm(50,0,1)), aes(x = x, y = y)) +
#'   geom_smooth(method = 'lm',
#'              color = alien_theme_colors["dark"],
#'              fill =  alien_theme_colors["light"]) +
#'  geom_point(color =  alien_theme_colors["medium"]) +
#'  labs(title = 'ALIEN Scatter Plot') +
#'  theme_alien()
#'
#' ggplot(mpg, aes(cty)) +
#' geom_density(aes(fill=factor(cyl)), alpha=0.8) +
#'   labs(title="Density plot",
#'        subtitle="City Mileage Grouped by Number of cylinders",
#'        caption="Source: mpg",
#'        x="City Mileage",
#'        fill="# Cylinders") +
#'   theme_alien()
#'
theme_alien <- function(alien_font = TRUE, ...){

  # CUSTOM FONT: add a custom font from google fonts
  font_family = ifelse(alien_font,"alien","Arial") # use this line if you have a custom font
  if (alien_font) {
    ThemePark:::initialize_font(name="Archivo Black", family="alien")    # Alternatives: "Roboto Condensed" "Anton"
  }

  # CUSTOM THEME:
  ggplot2::theme(
    plot.background = element_rect(fill = alien_theme_colors["background"]),
    panel.grid.minor = element_blank(),
    panel.grid.major = element_blank(),
    text = element_text(color = alien_theme_colors["text"], family = font_family),
    title = element_text(size=20),
    panel.background = element_rect(fill = alien_theme_colors["panel"]),
    panel.border = element_rect(fill = NA, color = alien_theme_colors["border"],linewidth=1.2),
    axis.title = element_text(size=17),
    axis.text = element_text(size=13,color = alien_theme_colors["text"]),
    axis.ticks = element_line(color = alien_theme_colors["border"],linewidth=1),
    legend.background = element_rect(fill = alien_theme_colors["panel"], color = NA),
    strip.background = element_rect(fill = alien_theme_colors["panel"], colour = alien_theme_colors["border"]),
    strip.text = element_text(colour = alien_theme_colors["text"]),
    ...
  )
}

# COLOR SCALES: Make pretty color scales
#' ALIEN Inspired Color Scales
#'
#' @param ... Additional arguments to pass to `ggplot2::scale_[fill/color]_gradient()`
#'
#' @return a `ggplot` scale object
#'
#' @rdname scale_alien
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
#'   theme_alien() +
#'   scale_color_alien() +facet_grid(.~class)
#'
scale_fill_alien <- function(...) {
  ggplot2::scale_fill_gradient(low = alien_theme_colors["dark"], high = alien_theme_colors["lighter"], ...)
}

#' @rdname scale_alien
#' @export
scale_color_alien <- function(...) {
  ggplot2::scale_color_gradient(low = alien_theme_colors["dark"], high = alien_theme_colors["lighter"], ...)
}
