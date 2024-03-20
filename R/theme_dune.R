## Luke Pilling
## theme_dune
## 20-Mar-2024

## Font from the amazing https://www.dafont.com/dune-rise.font

# COLOR: add, remove, or edit the colors to fit your scheme. Names should be

#' DUNE Theme Color Palette
#'
#' @format character vector of hex code strings
#' @export
#' @concept dune
#'
#' @examples
#' dune_theme_colors
#'
dune_theme_colors <- c(
  background = '#FAEDAB',
  text       = '#433012',
  panel      = '#FFEB82',
  border     = '#A44E11',
  lighter    = '#F7EEE1',
  light      = '#DB9128',
  medium     = '#B67523',
  dark       = '#433012'
)

dune_theme_colors_discrete <- c("#220F08", "#471C09", "#642F07", "#A2510F", "#B67523", "#DAA849", "#F3D867", "#FFEA7F")



# THEME: rename function and theme() arguments according to your theme design, feel free to edit this how you would like

#' DUNE Inspired Theme
#'
#' @param dune_font should `theme_dune` use https://www.dafont.com/dune-rise.font? Default is `TRUE`.
#' @param ... additional parameters to pass to `ggplot2::theme()`
#'
#' @return a `ggplot2` `theme` element
#' @export
#' @concept dune
#'
#' @examples
#' library(ggplot2)
#'
#' ggplot(data = data.frame(x = rnorm(50, 0, 1), y = rnorm(50,0,1)), aes(x = x, y = y)) +
#'   geom_smooth(method = 'lm',
#'               color = dune_theme_colors["dark"],
#'               fill =  dune_theme_colors["light"]) +
#'  geom_point(color =  dune_theme_colors["medium"]) +
#'  labs(title = 'DUNE Scatter Plot') +
#'  theme_dune()
#' 
#' ggplot(mpg, aes(cty)) +
#' geom_density(aes(fill=factor(cyl)), alpha=0.8) +
#'   labs(title="Density plot",
#'        subtitle="Mileage Grouped by cylinders",
#'        caption="Source: mpg",
#'        x="City Mileage",
#'        fill="# Cylinders") +
#'   theme_dune()+
#'   scale_fill_dune_discrete()
#'
theme_dune <- function(dune_font = TRUE, ...){

  # CUSTOM FONT: add a custom font from google fonts
  font_family = ifelse(dune_font,"Dune_Rise","sans") # use this line if you have a custom font
  if (dune_font) {
    ThemePark:::initialize_font(name = "Dune_Rise", family = "Dune_Rise", local = "Dune_Rise.ttf")
  }

  # CUSTOM THEME:
  ggplot2::theme(
        plot.background = element_rect(fill = dune_theme_colors["background"]),
        panel.grid.minor = element_blank(),
        panel.grid.major = element_blank(),
        text = element_text(color = dune_theme_colors["text"], family = font_family),
        title = element_text(size=20),
        panel.background = element_rect(fill = dune_theme_colors["panel"]),
        panel.border = element_rect(fill = NA, color = dune_theme_colors["border"], linewidth=1.2),
        axis.title = element_text(size=17),
        axis.text = element_text(size=13,color = dune_theme_colors["text"]),
        axis.ticks = element_line(color = dune_theme_colors["border"],linewidth=1),
        legend.background = element_rect(fill = dune_theme_colors["panel"], color = NA),
        strip.background = element_rect(fill = dune_theme_colors["lighter"], colour = dune_theme_colors["border"]),
        strip.text = element_text(colour = dune_theme_colors["text"]),
        ...
       )
}

# COLOR SCALES: Make pretty color scales

#' DUNE Inspired Color Scales
#'
#' @param ... Additional arguments to pass to `ggplot2::scale_[fill/color]_gradient()`
#'
#' @return a `ggplot` scale object
#'
#' @rdname scale_dune
#' @export
#' @concept dune
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
#'   theme_dune() +
#'   scale_color_dune()
#'
#' ggplot(mpg, aes(cty)) +
#' geom_density(aes(fill=factor(cyl)), alpha=0.8) +
#'   labs(title="Density plot",
#'        subtitle="Mileage Grouped by cylinders",
#'        caption="Source: mpg",
#'        x="City Mileage",
#'        fill="# Cylinders") +
#'   theme_dune()+
#'   scale_fill_dune_discrete()
#'
scale_fill_dune <- function(...) {
  ggplot2::scale_fill_gradient(low = dune_theme_colors["dark"], high = dune_theme_colors["light"], ...)
}

#' @rdname scale_dune
#' @export
#' @concept dune
scale_color_dune <- function(...) {
  ggplot2::scale_color_gradient(low = dune_theme_colors["dark"], high = dune_theme_colors["light"], ...)
}

#' @rdname scale_dune
#' @export
#' @concept dune
scale_fill_dune_discrete <- function(...) {
  ggplot2::scale_fill_manual(values = dune_theme_colors_discrete, ...)
}

#' @rdname scale_dune
#' @export
#' @concept dune
scale_color_dune_discrete <- function(...) {
  ggplot2::scale_color_manual(values = dune_theme_colors_discrete, ...)
}

