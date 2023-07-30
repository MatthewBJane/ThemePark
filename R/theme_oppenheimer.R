## Matthew B Jané
## theme_barbie
## 07/24/2023

coolflame_color_oppenheimer <- '#fdc232ff'
flame_color_oppenheimer     <- '#fd8532ff'
hotflame_color_oppenheimer  <- '#fd4b32ff'
panel_color_oppenheimer     <- '#222222ff'
border_color_oppenheimer    <- '#000000ff'
lightmain_color_oppenheimer <- '#eeb4d7ff'
text_color_oppenheimer      <- '#393939ff'
light_color_oppenheimer     <- '#6b6b6bff'
medium_color_oppenheimer    <- '#323232ff'
dark_color_oppenheimer      <- '#000000ff'


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
theme_oppenheimer <- function(oppenheimer_font=FALSE){

  # CUSTOM FONT: add a custom font from google fonts
  font_family <- ifelse(oppenheimer_font,"Oppenheimer", "sans") # use this line if you have a custom font
  if (oppenheimer_font) {
    initialize_font(name = "IM Fell English", family = "Oppenheimer")
  }

  # CUSTOM THEME:
  ggplot2::theme(
        panel.grid.minor = element_blank(),
        panel.grid.major = element_blank(),
        text = element_text(color = text_color_oppenheimer, family = font_family),
        title = element_text(size=20),
        panel.background = element_rect(fill = panel_color_oppenheimer),
        panel.border = element_rect(fill = NA, color = border_color_oppenheimer,linewidth=1.4),
        axis.title = element_text(size=17),
        axis.text = element_text(size=15,color = text_color_oppenheimer),
        axis.ticks = element_line(color = border_color_oppenheimer,linewidth=1),
        legend.background = element_rect(fill = panel_color_oppenheimer, color = NA),
        strip.background = element_rect(fill = light_color_oppenheimer, colour = light_color_oppenheimer),
        strip.text = element_text(colour = text_color_oppenheimer)
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
  ggplot2::scale_fill_gradient(low = coolflame_color_oppenheimer, high = hotflame_color_oppenheimer, ...)
}

#' @rdname scale_oppenheimer
#' @export
scale_color_oppenheimer_smoke <- function(...) {
  ggplot2::scale_color_gradient(low = coolflame_color_oppenheimer, high = hotflame_color_oppenheimer, ...)
}

#' @rdname scale_oppenheimer
#' @export
scale_fill_oppenheimer_flame  <- function(...) {
  ggplot2::scale_fill_gradient(low = light_color_oppenheimer, high = dark_color_oppenheimer, ...)
}

#' @rdname scale_oppenheimer
#' @export
scale_color_oppenheimer_flame <- function(...) {
  ggplot2::scale_color_gradient(low = light_color_oppenheimer, high = dark_color_oppenheimer, ...)
}
