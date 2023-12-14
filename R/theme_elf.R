# Christopher T. Kenny
## theme_elf
## 2023-12-14


#' Elf Inspired Theme Color Palette
#'
#' @format character vector of hex code strings
#' @export
#'
#' @examples
#' elf_theme_colors
#'
elf_theme_colors <- c(
  background = '#F9CC14',
  fill       = '#1B8B24',
  text       = '#DF1F2B',
  panel      = '#CAEBF2',
  strip_text = '#DF1F2B',
  leg_text   = '#4E829E',
  border     = '#0D101B',
  lighter    = '#CAF6A7',
  light      = '#9EB64F',
  medium     = '#335C1A',
  dark       = '#2A4F1E'
)

#' Elf Inspired Color Palette
#'
#' @format character vector of hex code strings
#' @export
#'
#' @examples
#' elf_palette
#'
elf_palette <- c(
  '#F4F3EF', '#F9CC14', '#921B0D', '#9EB64F', '#DF1F2B',
  '#2A4F1E', '#432D23', '#15375B','#11131E'
)

#' Elf Inspired Theme
#'
#' @param elf_font should `theme_elf` use custom font? Default is `TRUE`.
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
#'   labs(title = 'elf Scatter Plot') +
#'   theme_elf()
#'
#' ggplot(mpg, aes(cty)) +
#' geom_density(aes(fill=factor(cyl)), alpha=0.8, color = NA) +
#'   labs(title="Density plot",
#'        subtitle="City Mileage Grouped by Number of cylinders",
#'        caption="Source: mpg",
#'        x="City Mileage",
#'        fill="# Cylinders") +
#'   theme_elf() +
#'   scale_fill_elf_d()
#'
#'
theme_elf <- function(elf_font = TRUE, ...) {

  # CUSTOM FONT: add a custom font from google fonts
  font_family <- ifelse(elf_font, 'elf', 'sans') # use this line if you have a custom font - change elf to match the font name used
  if (elf_font) {
    initialize_font(name = "Rufina", family = "elf")
  }

  # CUSTOM THEME:
  ggplot2::theme(
    plot.background = element_rect(fill = elf_theme_colors["background"]),
    text = element_text(color = elf_theme_colors["text"], family = font_family),
    title = element_text(size = 20),
    line = element_line(colour = 'white'),
    panel.grid.minor = element_blank(),
    panel.grid.major = element_blank(),
    panel.background = element_rect(fill = elf_theme_colors["fill"], color = elf_theme_colors["panel"]),
    panel.border = element_rect(fill = NA, color = elf_theme_colors["border"], linewidth = 1.2),
    axis.title = element_text(size = 17),
    axis.text = element_text(size = 13, color = elf_theme_colors["text"]),
    axis.ticks = element_line(color = elf_theme_colors["border"], linewidth = 1),
    legend.background = element_rect(fill = elf_theme_colors["lighter"], color = NA),
    legend.text = element_text(size = 13, color = elf_theme_colors["leg_text"]),
    legend.title = element_text(size = 13, color = elf_theme_colors["leg_text"]),
    strip.background = element_rect(fill = elf_theme_colors["lighter"], colour = elf_theme_colors["border"]),
    strip.text = element_text(colour = elf_theme_colors["strip_text"], size = 10),
    ...
  )
}

# COLOR SCALES: Make pretty color scales

#' Elf Inspired Color Scales
#'
#' @param ... Additional arguments to pass to `ggplot2::binned_scale` for `_b`,
#' `ggplot2::scale_[fill/color]_gradient` for `_c`, or `ggplot2::discrete_scale`
#' for `_d`
#'
#' @return a `ggplot` scale object
#'
#' @rdname scale_elf
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
#'   theme_elf() +
#'   scale_fill_elf_d()
#'
scale_color_elf_c <- function(...) {
  ggplot2::scale_color_gradient(..., low = elf_theme_colors["light"], high = elf_theme_colors["dark"])
}

#' @rdname scale_elf
#' @export
scale_fill_elf_c <- function(...) {
  ggplot2::scale_fill_gradient(..., low = elf_theme_colors["light"], high = elf_theme_colors["dark"])
}

#' @rdname scale_elf
#' @export
scale_color_elf_b <- function(...) {
  if (!requireNamespace('scales', quietly = TRUE)) {
    stop('This function requires the `scales` R package.')
  }
  ramp <- scales::colour_ramp(c(elf_theme_colors["light"], elf_theme_colors["dark"]))
  ggplot2::binned_scale('color', 'elf', palette = ramp, ...)
}

#' @rdname scale_elf
#' @export
scale_fill_elf_b <- function(...) {
  if (!requireNamespace('scales', quietly = TRUE)) {
    stop('This function requires the `scales` R package.')
  }
  ramp <- scales::colour_ramp(c(elf_theme_colors["light"], elf_theme_colors["dark"]))
  ggplot2::binned_scale('fill', 'elf', palette = ramp, ...)
}


#' @rdname scale_elf
#' @export
scale_color_elf_d <- function(...) {
  ggplot2::discrete_scale(aesthetics = 'color', scale_name = elf_palette,
                          palette = rot_pal(elf_palette), ...)
}

#' @rdname scale_elf
#' @export
scale_fill_elf_d <- function(...) {
  ggplot2::discrete_scale(aesthetics = 'fill', scale_name = elf_palette, ...,
                          palette = rot_pal(elf_palette))
}

#' @rdname scale_elf
#' @export
scale_colour_elf_d <- scale_color_elf_d

#' @rdname scale_elf
#' @export
scale_colour_elf_c <- scale_color_elf_c

#' @rdname scale_elf
#' @export
scale_colour_elf_b <- scale_color_elf_b
