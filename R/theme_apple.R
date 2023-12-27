## Daniel He
## theme_apple
## August 7th, 2023


# COLOR: add, remove, or edit the colors to fit your scheme (hex code preferred, but you can use any type). Names should be
#' apple Inspired Theme Color Palette
#'
#' @format character vector of hex code strings
#' @export
#'
#' @examples
#' apple_theme_colors
#'
apple_theme_colors <- c(
  background = '#FFFFFF',
  text       = '#636366',
  axis       = '#1c1c1e'
)

# DISCRETE PALETTE COLORS: Please update to some colors that work with your theme
#' apple Inspired Color Palette
#'
#' @format character vector of hex code strings
#' @export
#'
#' @examples
#' apple_palette
#'
apple_palette <- c(rgb(255,59,48, maxColorValue = 255), rgb(255,149,0, maxColorValue = 255), 
                   rgb(255,204,0, maxColorValue = 255), rgb(40,205,65, maxColorValue = 255),
                   rgb(0,199,190, maxColorValue = 255), rgb(89,173,196, maxColorValue = 255),
                   rgb(85,190,240, maxColorValue = 255), rgb(0,122,255, maxColorValue = 255),
                   rgb(88,86,214, maxColorValue = 255), rgb(175,82,222, maxColorValue = 255),
                   rgb(255,45,85, maxColorValue = 255), rgb(162,132,94, maxColorValue = 255),
                   rgb(142,142,147, maxColorValue = 255)
                   )

#' apple Inspired Theme
#'
#' @param apple_font should `theme_apple` use custom font? Default is `TRUE`.
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
#'   labs(title = 'apple Scatter Plot') +
#'   theme_apple()
#'
#' ggplot(mpg, aes(cty)) +
#' geom_density(aes(fill=factor(cyl)), alpha=0.8) +
#'   labs(title="Density plot",
#'        subtitle="City Mileage Grouped by Number of cylinders",
#'        caption="Source: mpg",
#'        x="City Mileage",
#'        fill="# Cylinders") +
#'   theme_apple() +
#'   scale_fill_apple_d()
#'
#'
theme_apple <- function(apple_font = TRUE, ...) {
  
  # CUSTOM FONT: add a custom font from google fonts
  font_family <- ifelse(apple_font, 'apple', 'Arial') # use this line if you have a custom font - change apple to match the font name used
  if (apple_font) {
    initialize_font(name = "Inter", family = "apple", regular.wt = 500, bold.wt = 600)
  }
  showtext_auto()
  
  # CUSTOM THEME:
  ggplot2::theme(
    plot.background = element_rect(fill = apple_theme_colors["background"]),
    text = element_text(color = apple_theme_colors["text"], family = font_family),
    panel.grid.minor = element_blank(),
    panel.grid.major = element_blank(),
    panel.background = element_rect(fill = apple_theme_colors["background"], color = apple_theme_colors["background"]),
    panel.border = element_rect(fill = NA, color = NA),
    plot.title = element_text(size=22, color=apple_theme_colors["axis"], face="bold", hjust=0.5, margin = margin(t = 0, r = 0, b = 20, l = 0)),
    plot.caption = element_text(size=6),
    plot.subtitle = element_text(size=12, hjust=0.5),
    axis.title = element_text(size=10, color = apple_theme_colors["text"]),
    axis.text = element_text(size=8, color = apple_theme_colors["text"]),
    axis.ticks = element_line(color = apple_theme_colors["axis"], linewidth = 1),
    axis.line = element_line(color = apple_theme_colors["axis"], linewidth=0.5),
    axis.title.y = element_text(margin = margin(t = 0, r = 10, b = 0, l = 0)),
    axis.title.x = element_text(margin = margin(t = 10, r = 0, b = 0, l = 0)),
    legend.background = element_rect(fill = apple_theme_colors["background"], color = apple_theme_colors["background"]),
    legend.key = element_rect(fill=apple_theme_colors["background"]),
    strip.background = element_rect(fill = apple_theme_colors["background"], colour = apple_theme_colors["background"]),
    strip.text = element_text(colour = apple_theme_colors["text"], size = 10)
  )
}

# COLOR SCALES: Make pretty color scales

#' apple Inspired Color Scales
#'
#' @param ... Additional arguments to pass to `ggplot2::binned_scale` for `_b`,
#' `ggplot2::scale_[fill/color]_gradient` for `_c`, or `ggplot2::discrete_scale`
#' for `_d`
#'
#' @return a `ggplot` scale object
#'
#' @rdname scale_apple
#' @export
#'
#' @examples
#' library(ggplot2)
#'
#' ggplot(mpg, aes(cty)) +
#' geom_density(aes(fill=factor(cyl)), alpha=0.8) +
#'   labs(title="Density plot",
#'        subtitle="City Mileage Grouped by Number of cylinders",
#'        caption="Source: mpg",
#'        x="City Mileage",
#'        fill="# Cylinders") +
#'   facet_wrap(~(hwy > 29)) +
#'   theme_apple() +
#'   scale_fill_apple_d()
#'
scale_color_apple_c <- function(...) {
  ggplot2::scale_color_gradientn(...,colours = c("#FED2CE","#ffa9a4","#e681d8","#8b9fe8","#35C3F3"))
}

#' @rdname scale_apple
#' @export
scale_fill_apple_c <- function(...) {
  ggplot2::scale_fill_gradient(..., colours = c("#FED2CE","#ffa9a4","#e681d8","#8b9fe8","#35C3F3"))
}

# DISCRETE PALETTE COLORS: Please update to some colors that work with your theme
apple_colors <- c(rgb(255,59,48, maxColorValue = 255), rgb(255,149,0, maxColorValue = 255), 
                  rgb(255,204,0, maxColorValue = 255), rgb(40,205,65, maxColorValue = 255),
                  rgb(0,199,190, maxColorValue = 255), rgb(89,173,196, maxColorValue = 255),
                  rgb(85,190,240, maxColorValue = 255), rgb(0,122,255, maxColorValue = 255),
                  rgb(88,86,214, maxColorValue = 255), rgb(175,82,222, maxColorValue = 255),
                  rgb(255,45,85, maxColorValue = 255), rgb(162,132,94, maxColorValue = 255),
                  rgb(142,142,147, maxColorValue = 255)
                  )

#' @rdname scale_apple
#' @export
scale_color_apple_d <- function(...) {
  ggplot2::discrete_scale(aesthetics = 'color', scale_name = apple_colors,
                          palette = rot_pal(apple_colors), ...)
}

#' @rdname scale_apple
#' @export
scale_fill_apple_d <- function(...) {
  ggplot2::discrete_scale(aesthetics = 'fill', scale_name = apple_colors, ...,
                          palette = rot_pal(apple_colors))
}

#' @rdname scale_apple
#' @export
scale_colour_apple_d <- scale_color_apple_d

#' @rdname scale_apple
#' @export
scale_colour_apple_c <- scale_color_apple_c
