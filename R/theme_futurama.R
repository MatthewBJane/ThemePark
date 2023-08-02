## Tylor J Harlow
## theme_futurama
## 06/25/2023

# COLOR: add, remove, or edit the colors to fit your scheme. Names should be
#' Futurama Theme Color Palette
#'
#' @format character vector of hex code strings
#' @export
#'
#' @examples
#' futurama_theme_colors
#'
futurama_theme_colors <- c(
  text    = '#e74c3cff',
  panel   = '#abebc6ff',
  border  = '#abb2b9ff',
  lighter = '#f4d03fff',
  light   = '#1e8449ff',
  medium  = '#ec7063ff',
  dark    = '#e74c3cff'
)

# THEME: rename function and theme() arguments according to your theme design, feel free to edit this how you would like
#' Futurama Inspired Theme
#'
#' @param futurama_font should `theme_futurama` use Google Font's Dongle? Default is `TRUE`.
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
#'   labs(title = 'Futurama Scatter Plot') +
#'   theme_futurama()
#'
#' ggplot(mpg, aes(cty)) +
#' geom_density(aes(fill=factor(cyl)), alpha=0.8) +
#'   labs(title="Density plot",
#'        subtitle="City Mileage Grouped by Number of cylinders",
#'        caption="Source: mpg",
#'        x="City Mileage",
#'        fill="# Cylinders") +
#'   theme_futurama()
#'
theme_futurama <- function(futurama_font = TRUE, ...){

  # CUSTOM FONT: add a custom font from google fonts
  font_family = ifelse(futurama_font,"futurama","Arial") # use this line if you have a custom font
  if (futurama_font) {
    initialize_font(name = "Dongle", family = "futurama")
  }
  text_size_increase = ifelse(futurama_font,6,0) # add text size for custom text

  # CUSTOM THEME:
  ggplot2::theme(
    panel.grid.minor = element_blank(),
    panel.grid.major = element_blank(),
    text = element_text(color = futurama_theme_colors["text"], family = font_family, size = 10),
    title = element_text(size=20+text_size_increase),
    panel.background = element_rect(fill = futurama_theme_colors["panel"]),
    panel.border = element_rect(fill = NA, color = futurama_theme_colors["border"],linewidth=2),
    axis.title = element_text(size=17+text_size_increase),
    axis.text = element_text(size=13+text_size_increase,color = futurama_theme_colors["text"]),
    axis.ticks = element_line(color = futurama_theme_colors["border"],linewidth=1.7),
    legend.background = element_rect(fill = futurama_theme_colors["panel"], color = NA),
    strip.background = element_rect(fill = futurama_theme_colors["lighter"], colour = futurama_theme_colors["border"]),
    strip.text = element_text(colour = futurama_theme_colors["text"]),
    ...
  )
}

# COLOR SCALES: Make pretty color scales
# CTK: these are identical to barbie's
#scale_fill_futurama <- ggplot2::scale_fill_gradient(low = '#eeb4d7ff', high = '#bf2986ff')
#scale_color_futurama <- ggplot2::scale_color_gradient(low = '#eeb4d7ff', high = '#bf2986ff')
