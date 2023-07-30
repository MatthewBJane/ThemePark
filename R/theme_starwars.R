## Matthew B Jané
## theme_starwars
## 06/24/2023

panel_color_starwars     <- '#000000ff'
border_color_starwars    <- '#ffffffff'
lightmain_color_starwars <- '#eeb4d7ff'
text_color_starwars      <- '#f1e81fff'
goldtext_color_starwars  <- '#f1e81fff'
darktext_color_starwars  <- '#111111ff'
star_color_starwars      <- '#ffffffff'
light_color_starwars     <- '#faf7b5ff'
medium_color_starwars    <- '#f1e81fff'
dark_color_starwars      <- '#989209ff'

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
theme_starwars <- function(starwars_font=FALSE){

  # CUSTOM FONT: add a custom font from google fonts
  font_family <- ifelse(starwars_font,"starwars", "sans") # use this line if you have a custom font
  if (starwars_font) {
    initialize_font(name = "Russo One", family = "starwars")
  }

  # CUSTOM THEME:
  ggplot2::theme(
        panel.grid.minor = element_blank(),
        panel.grid.major = element_blank(),
        text = element_text(color = goldtext_color_starwars, family = font_family),
        title = element_text(size=20),
        panel.background = element_rect(fill = panel_color_starwars),
        panel.border = element_rect(fill = NA, color = border_color_starwars,linewidth=1.4),
        axis.title = element_text(size=17),
        axis.text = element_text(size=15,color = goldtext_color_starwars),
        axis.ticks = element_line(color = border_color_starwars,linewidth=1),
        legend.background = element_rect(fill = panel_color_starwars, color = NA),
         plot.background = element_rect(fill = panel_color_starwars),
        strip.background = element_rect(fill = darktext_color_starwars, colour = border_color_starwars),
        strip.text = element_text(colour = text_color_starwars)
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
  ggplot2::scale_fill_gradient(low = light_color_starwars, high = dark_color_starwars, ...)
}

#' @rdname scale_starwars
#' @export
scale_color_starwars <- function(...) {
  ggplot2::scale_color_gradient(low = light_color_starwars, high = dark_color_starwars, ...)
}
