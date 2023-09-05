## Ekaterina Kustova
## theme_grand_budapest, theme_asteroid_city, theme_french_dispatch, theme_moonrise_kingdom
## 28.07.2023

## theme_grand_budapest
#' Grand Budapest Inspired Theme Color Palette
#'
#' @format character vector of hex code strings
#' @export
#'
#' @examples
#' grand_budapest_theme_colors
#'
grand_budapest_theme_colors <- c(
  text    = '#42292F',
  panel   = '#FFF5F1',
  border  = '#B6665A',
  lighter = '#F5E4D0',
  light   = '#EFB4BC',
  medium  = '#638BA6',
  dark    = '#A46B71'
)

#' Wes Anderson Movies Inspired Themes
#'
#' @param grand_budapest_font should `theme_grand_budapest` use Google Font's Limelight? Default is `TRUE`.
#' @param asteroid_city_font should `theme_asteroid_city` use Google Font's Bungee Shade? Default is `TRUE`.
#' @param french_dispatch_font should `theme_french_dispatch` use Google Font's Montserrat Subrayada? Default is `TRUE`.
#' @param moonrise_kingdom_font should `theme_moonrise_kingdom` use Google Font's Lobster? Default is `TRUE`.
#' @param ... additional parameters to pass to `ggplot2::theme()`
#'
#' @return a `ggplot2` `theme` element
#'
#' @rdname theme_wes_anderson
#' @export
#'
#' @examples
#' library(ggplot2)
#'
#' ggplot(data = data.frame(x = rnorm(50, 0, 1), y = rnorm(50,0,1)), aes(x = x, y = y)) +
#'   geom_smooth(method = 'lm', color = '#890000') +
#'   geom_point() +
#'   labs(title = 'Grand Budapest Scatter Plot') +
#'   theme_grand_budapest()
#'
#' ggplot(mpg, aes(cty)) +
#' geom_density(aes(fill=factor(cyl)), alpha=0.8) +
#'   labs(title="Density plot",
#'        subtitle="City Mileage Grouped by Number of cylinders",
#'        caption="Source: mpg",
#'        x="City Mileage",
#'        fill="# Cylinders") +
#'   theme_asteroid_city()
#'
theme_grand_budapest <- function(grand_budapest_font = TRUE, ...){
  # CUSTOM FONT: add a custom font from google fonts
  font_family = ifelse(grand_budapest_font,"grand_budapest","sans") # use this line if you have a custom font
  if (grand_budapest_font) {
    initialize_font(name = "Limelight", family = "grand_budapest")
  }

  # CUSTOM THEME:
  ggplot2::theme(
    panel.grid.minor = element_blank(),
    panel.grid.major = element_blank(),
    text = element_text(color = grand_budapest_theme_colors["text"], family = font_family),
    title = element_text(size=20),
    panel.background = element_rect(fill = grand_budapest_theme_colors["panel"]),
    panel.border = element_rect(fill = NA, color = grand_budapest_theme_colors["border"],linewidth=1.2),
    axis.title = element_text(size=17),
    axis.text = element_text(size=13,color = grand_budapest_theme_colors["text"]),
    axis.ticks = element_line(color = grand_budapest_theme_colors["border"],linewidth=1),
    legend.background = element_rect(fill = grand_budapest_theme_colors["panel"], color = NA),
    ...
  )
}



#' Wes Anderson Movies Inspired Color Scales
#'
#' @param ... Additional arguments to pass to `ggplot2::scale_[fill/color]_gradient()`
#'
#' @return a `ggplot` scale object
#'
#' @name scale_wes_anderson
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
#'   scale_color_grand_budapest()
#'
NULL

#' @rdname scale_wes_anderson
#' @export

#' @rdname scale_wes_anderson
#' @export
scale_fill_grand_budapest <- function(...) {
  ggplot2::scale_fill_gradient(low = grand_budapest_theme_colors["light"], high = grand_budapest_theme_colors["dark"], ...)
}

#' @rdname scale_wes_anderson
#' @export
scale_color_grand_budapest <- function(...) {
  ggplot2::scale_color_gradient(low = grand_budapest_theme_colors["light"], high = grand_budapest_theme_colors["dark"], ...)
}


## theme_asteroid_city
#' Asteroid City Inspired Theme Color Palette
#'
#' @format character vector of hex code strings
#' @export
#'
#' @examples
#' asteroid_city_theme_colors
#'
asteroid_city_theme_colors <- c(
  text    = "#F28A2E",
  panel   = '#FFE9C7',
  border  = '#A60303',
  lighter = '#90D3B2',
  light   = '#D9B471',
  medium  = '#03A696',
  dark    = '#3A403E'
)

#' @rdname theme_wes_anderson
#' @export
theme_asteroid_city <- function(asteroid_city_font = TRUE, ...){

  # CUSTOM FONT: add a custom font from google fonts
  font_family = ifelse(asteroid_city_font,"asteroid_city","sans") # use this line if you have a custom font
  if (asteroid_city_font) {
    initialize_font(name = "Bungee Shade", family = "asteroid_city")
  }

  # CUSTOM THEME:
  ggplot2::theme(
    panel.grid.minor = element_blank(),
    panel.grid.major = element_blank(),
    text = element_text(color = asteroid_city_theme_colors["text"], family = font_family),
    title = element_text(size=20),
    panel.background = element_rect(fill = asteroid_city_theme_colors["panel"]),
    panel.border = element_rect(fill = NA, color = asteroid_city_theme_colors["border"],linewidth=1.2),
    axis.title = element_text(size=17),
    axis.text = element_text(size=13,color = asteroid_city_theme_colors["text"]),
    axis.ticks = element_line(color = asteroid_city_theme_colors["border"],linewidth=1),
    legend.background = element_rect(fill = asteroid_city_theme_colors["panel"], color = NA),
    legend.text=element_text(color=asteroid_city_theme_colors["dark"]), legend.title = element_text(color=asteroid_city_theme_colors["dark"]),
    ...
  )
}


#' @rdname scale_wes_anderson
#' @export
scale_fill_asteroid_city <- function(...) {
  ggplot2::scale_fill_gradient(low = asteroid_city_theme_colors["lighter"], high = asteroid_city_theme_colors["dark"], ...)
}

#' @rdname scale_wes_anderson
#' @export
scale_color_asteroid_city <- function(...) {
  ggplot2::scale_color_gradient(low = asteroid_city_theme_colors["lighter"], high = asteroid_city_theme_colors["dark"], ...)
}

## theme_french_dispatch
#' French Dispatch Inspired Theme Color Palette
#'
#' @format character vector of hex code strings
#' @export
#'
#' @examples
#' french_dispatch_theme_colors
#'
french_dispatch_theme_colors <- c(
  text    = "#1F1F1D",
  panel   = '#F7EEDF',
  border  = '#F24535',
  lighter = '#8FBFBF',
  light   = '#9A9A9A',
  medium  = '#A68F4B',
  dark    = '#F28D35'
)

#' @rdname theme_wes_anderson
#' @export
theme_french_dispatch <- function(french_dispatch_font = TRUE, ...){
 # CUSTOM FONT: add a custom font from google fonts
  font_family = ifelse(french_dispatch_font,"french_dispatch","sans") # use this line if you have a custom font
  if (french_dispatch_font) {
    initialize_font(name = "Montserrat Subrayada", family = "french_dispatch")
  }

  # CUSTOM THEME:
  ggplot2::theme(
    panel.grid.minor = element_blank(),
    panel.grid.major = element_blank(),
    text = element_text(color = french_dispatch_theme_colors["text"], family = font_family),
    title = element_text(size=20),
    panel.background = element_rect(fill = french_dispatch_theme_colors["panel"]),
    panel.border = element_rect(fill = NA, color = french_dispatch_theme_colors["border"],linewidth=1.2),
    axis.title = element_text(size=17),
    axis.text = element_text(size=13,color = french_dispatch_theme_colors["text"]),
    axis.ticks = element_line(color = french_dispatch_theme_colors["border"],linewidth=1),
    legend.background = element_rect(fill = french_dispatch_theme_colors["panel"], color = NA),
    legend.text=element_text(color=french_dispatch_theme_colors["dark"]),
    legend.title = element_text(color=french_dispatch_theme_colors["dark"]),
    ...
  )
}

#' @rdname scale_wes_anderson
#' @export
scale_fill_french_dispatch <- function(...) {
  ggplot2::scale_fill_gradient(low = french_dispatch_theme_colors["light"], high = french_dispatch_theme_colors["dark"], ...)
}

#' @rdname scale_wes_anderson
#' @export
scale_color_french_dispatch <- function(...) {
  ggplot2::scale_color_gradient(low = french_dispatch_theme_colors["light"], high = french_dispatch_theme_colors["dark"], ...)
}

### theme_moonrise_kingdom
#' Moonrise Kingdom Inspired Theme Color Palette
#'
#' @format character vector of hex code strings
#' @export
#'
#' @examples
#' moonrise_kingdom_theme_colors
#'
moonrise_kingdom_theme_colors <- c(
  text    = "#C76734",
  panel   = '#F3EDD2',
  border  = '#F2D649',
  lighter = '#B8DEE2',
  light   = '#C9CD9B',
  medium  = '#F25D27',
  dark    = '#6C6548'
)

#' @rdname theme_wes_anderson
#' @export
theme_moonrise_kingdom <- function(moonrise_kingdom_font = TRUE, ...){
  # CUSTOM FONT: add a custom font from google fonts
  font_family = ifelse(moonrise_kingdom_font,"moonrise_kingdom","sans") # use this line if you have a custom font
  if (moonrise_kingdom_font) {
    initialize_font(name = "Lobster", family = "moonrise_kingdom")
  }

  # CUSTOM THEME:
  ggplot2::theme(
    panel.grid.minor = element_blank(),
    panel.grid.major = element_blank(),
    text = element_text(color = moonrise_kingdom_theme_colors["text"], family = font_family),
    title = element_text(size=16),
    panel.background = element_rect(fill = moonrise_kingdom_theme_colors["panel"]),
    panel.border = element_rect(fill = NA, color = moonrise_kingdom_theme_colors["border"],linewidth=1.2),
    axis.title = element_text(size=17),
    axis.text = element_text(size=13,color = moonrise_kingdom_theme_colors["text"]),
    axis.ticks = element_line(color = moonrise_kingdom_theme_colors["border"],linewidth=1),
    legend.background = element_rect(fill = moonrise_kingdom_theme_colors["panel"], color = moonrise_kingdom_theme_colors["border"]),
    legend.text=element_text(color=moonrise_kingdom_theme_colors["text"]), legend.title = element_text(color=moonrise_kingdom_theme_colors["text"]),
    ...
  )
}

#' @rdname scale_wes_anderson
#' @export
scale_fill_moonrise_kingdom<- function(...) {
  ggplot2::scale_fill_gradient(low = moonrise_kingdom_theme_colors["light"], high = moonrise_kingdom_theme_colors["dark"], ...)
}

#' @rdname scale_wes_anderson
#' @export
scale_color_moonrise_kingdom <- function(...) {
  ggplot2::scale_color_gradient(low = moonrise_kingdom_theme_colors["light"], high = moonrise_kingdom_theme_colors["dark"], ...)
}
