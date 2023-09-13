## Alexis van STRAATEN
## theme_friends
## 2023-07-30

# COLOR: add, remove, or edit the colors to fit your scheme. Names should be
#' Friends Theme Color Palette
#'
#' @format character vector of hex code strings
#' @export
#' @concept friends
#'
#' @examples
#' friends_theme_colors
#'
friends_theme_colors <- list(
  background = 'white',
  text       = c("#29afc8", "#e05e2d", "#304f23",
                 "#8174ce", "#83694e", "#fbec8b"),
  fill       = '#ece4df',
  panel      = '#651a18',
  strip_text = '#010203',
  border     = '#000000',
  lighter    = '#b09169',
  light      = '#901a18',
  medium     = '#651a18',
  dark       = '#401a18'
)

# DISCRETE PALETTE COLORS: Please update to some colors that work with your theme
#' Friends Color Palette
#'
#' @format character vector of hex code strings
#' @export
#' @concept friends
#'
#' @examples
#' friends_palette
#'
friends_palette <- c("#29afc8", "#e05e2d", "#304f23",
                     "#8174ce", "#83694e", "#fbec8b")

# friends_colors <- text_color_friends


#' Friends tv series Inspired Theme
#'
#' @param friends_font should `theme_friends` use Google Font's Permanent
#' Marker? Default is `TRUE`.
#' @param ... additional parameters to pass to `ggplot2::theme()`
#'
#' @return a `ggplot2` `theme` element
#' @export
#' @concept friends
#'
#' @examples
#' library(ggplot2)
#'
#' ggplot(data = data.frame(x = rnorm(50, 0, 1), y = rnorm(50,0,1)), aes(x = x, y = y)) +
#'   geom_smooth(method = 'lm') +
#'   geom_point() +
#'   labs(title = 'friends Scatter Plot') +
#'   theme_friends()
#'
#' ggplot(mpg, aes(cty)) +
#' geom_density(aes(fill=factor(cyl)), alpha=0.8) +
#'   labs(title="Density plot",
#'        subtitle="City Mileage Grouped by Number of cylinders",
#'        caption="Source: mpg",
#'        x="City Mileage",
#'        fill="# Cylinders") +
#'   theme_friends() +
#'   scale_fill_friends_d()
#'
#'
theme_friends <- function(friends_font = TRUE, ...) {

  # CUSTOM FONT: add a custom font from google fonts
  font_family <- ifelse(friends_font, 'Permanent Marker', 'sans')
  if (friends_font) {
    initialize_font(name = "Permanent Marker")
  }

  # CUSTOM THEME:
  #font_family <- ifelse(friends_font, 'friends', 'sans')
  suppressWarnings(
    ggplot2::theme(
      plot.background = element_rect(fill = friends_theme_colors$background),
      text = element_text(color = sample(friends_theme_colors$text), family = font_family),
      title = element_text(size = 20, color = "#000000"),
      panel.grid.minor = element_blank(),
      panel.grid.major = element_blank(),
      panel.background = element_rect(fill = friends_theme_colors$fill, color = friends_theme_colors$panel),
      panel.border = element_rect(fill = NA, color = friends_theme_colors$border, linewidth = 1.2),
      axis.title.x = element_text(size = 17, color = "#4d4d4d"),
      axis.title.y = element_text(size = 17, color = "#4d4d4d"),
      axis.text.x = element_text(size = 13, color = sample(friends_theme_colors$text)),
      axis.text.y = element_text(size = 13, color = sample(friends_theme_colors$text)),
      axis.ticks = element_line(color = friends_theme_colors$border, linewidth = 1),
      legend.background = element_rect(fill = friends_theme_colors$fill, color = NA),
      legend.title = element_text(color = "#000000"),
      legend.text = element_text(color = "#000000"),
      strip.background = element_rect(fill = friends_theme_colors$lighter, colour = friends_theme_colors$border),
      strip.text = element_text(colour = friends_theme_colors$strip_text, size = 10),
      ...
    )
  )
}

# COLOR SCALES: Make pretty color scales

#' Finding friends Inspired Color Scales
#'
#' @param ... Additional arguments to pass to `ggplot2::binned_scale` for `_b`,
#' `ggplot2::scale_[fill/color]_gradient` for `_c`, or `ggplot2::discrete_scale`
#'
#' @return description
#'
#' @rdname scale_friends
#' @export
#' @concept friends
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
#'   theme_friends() +
#'   scale_fill_friends_d()
#'
scale_color_friends_c <- function(...) {
  ggplot2::scale_color_gradient(..., low = friends_theme_colors$light, high = friends_theme_colors$dark)
}

#' @rdname scale_friends
#' @export
#' @concept friends
scale_fill_friends_c <- function(...) {
  ggplot2::scale_fill_gradient(..., low = friends_theme_colors$light, high = friends_theme_colors$dark)
}

#' @rdname scale_friends
#' @export
#' @concept friends
scale_color_friends_b <- function(...) {
  if (!requireNamespace('scales', quietly = TRUE)) {
    stop('This function requires the `scales` R package.')
  }
  ramp <- scales::colour_ramp(c(friends_theme_colors$light, friends_theme_colors$dark))
  ggplot2::binned_scale('color', 'friends', palette = ramp, ...)
}

#' @rdname scale_friends
#' @export
#' @concept friends
scale_fill_friends_b <- function(...) {
  if (!requireNamespace('scales', quietly = TRUE)) {
    stop('This function requires the `scales` R package.')
  }
  ramp <- scales::colour_ramp(c(friends_theme_colors$light, friends_theme_colors$dark))
  ggplot2::binned_scale('fill', 'friends', palette = ramp, ...)
}

#' @rdname scale_friends
#' @export
#' @concept friends
scale_color_friends_d <- function(...) {
  ggplot2::discrete_scale(aesthetics = 'color', scale_name = friends_palette,
                          palette = rot_pal(friends_palette), ...)
}

#' @rdname scale_friends
#' @export
#' @concept friends
scale_fill_friends_d <- function(...) {
  ggplot2::discrete_scale(aesthetics = 'fill', scale_name = friends_palette, ...,
                          palette = rot_pal(friends_palette))
}

#' @rdname scale_friends
#' @export
#' @concept friends
scale_colour_friends_d <- scale_color_friends_d

#' @rdname scale_friends
#' @export
#' @concept friends
scale_colour_friends_c <- scale_color_friends_c

#' @rdname scale_friends
#' @export
#' @concept friends
scale_colour_friends_b <- scale_color_friends_b
