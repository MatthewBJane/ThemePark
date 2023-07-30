## Begum Ozemek
## theme_slytherin, theme_ravenclaw, theme_hufflepuff, theme_gryffindor
## 25.07.2023

## gryffindor
#' Gryffindor Theme Color Palette
#'
#' @format character vector of hex code strings
#' @export
#'
#' @examples
#' gryffindor_theme_colors
#'
gryffindor_theme_colors <- c(
  text    = '#000000',
  panel   = '#ffb832',
  border  = '#5c0000',
  lighter = '#ffa700',
  light   = '#fb7e00',
  medium  = '#c50000',
  dark    = '#890000'
)

#' Harry Potter Inspired Themes
#'
#' @param gryffindor_font should `theme_gryffindor` use Google Font's Henny Penny? Default is `FALSE`.
#' @param ... additional parameters to pass to `ggplot2::theme()`
#'
#' @return a `ggplot2` `theme` element
#'
#' @rdname theme_hogwarts
#' @export
#'
#' @examples
#' library(ggplot2)
#'
#' ggplot(data = data.frame(x = rnorm(50, 0, 1), y = rnorm(50,0,1)), aes(x = x, y = y)) +
#'   geom_smooth(method = 'lm', color = '#890000') +
#'   geom_point() +
#'   labs(title = 'Gryffindor Scatter Plot') +
#'   theme_gryffindor(gryffindor_font = TRUE)
#'
#' ggplot(mpg, aes(cty)) +
#' geom_density(aes(fill=factor(cyl)), alpha=0.8) +
#'   labs(title="Density plot",
#'        subtitle="City Mileage Grouped by Number of cylinders",
#'        caption="Source: mpg",
#'        x="City Mileage",
#'        fill="# Cylinders") +
#'   theme_ravenclaw(ravenclaw_font = TRUE)
#'
theme_gryffindor <- function(gryffindor_font = TRUE, ...){
  # CUSTOM FONT: add a custom font from google fonts
  font_family = ifelse(gryffindor_font,"harrypotter","Serif") # use this line if you have a custom font
  if (gryffindor_font) {
    initialize_font(name = "Henny Penny", family = "harrypotter")
  }

  # CUSTOM THEME:
  ggplot2::theme(
    panel.grid.minor = element_blank(),
    panel.grid.major = element_blank(),
    text = element_text(color = gryffindor_theme_colors["text"], family = font_family),
    title = element_text(size=20),
    panel.background = element_rect(fill = gryffindor_theme_colors["panel"]),
    panel.border = element_rect(fill = NA, color = gryffindor_theme_colors["border"],linewidth=1.2),
    axis.title = element_text(size=17),
    axis.text = element_text(size=13,color = gryffindor_theme_colors["text"]),
    axis.ticks = element_line(color = gryffindor_theme_colors["border"],linewidth=1),
    legend.background = element_rect(fill = gryffindor_theme_colors["panel"], color = NA),
    ...
  )
}


#' Harry Potter Inspired Color Scales
#'
#' @param ... Additional arguments to pass to `ggplot2::scale_[fill/color]_gradient()`
#'
#' @return a `ggplot` scale object
#'
#' @name scale_hogwarts
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
#'   scale_color_gryffindor()
#'
NULL

#' @rdname scale_hogwarts
#' @export
scale_fill_gryffindor <- function(...) {
  ggplot2::scale_fill_gradient(low = gryffindor_theme_colors["light"], high = gryffindor_theme_colors["dark"], ...)
}

#' @rdname scale_hogwarts
#' @export
scale_color_gryffindor <- function(...) {
  ggplot2::scale_color_gradient(low = gryffindor_theme_colors["light"], high = gryffindor_theme_colors["dark"], ...)
}

## RAVENCLAW ######

#' Ravenclaw Theme Color Palette
#'
#' @format character vector of hex code strings
#' @export
#'
#' @examples
#' ravenclaw_theme_colors
#'
ravenclaw_theme_colors <- c(
  text    = "grey60",
  panel   = '#0e1a40',
  border  = 'grey80',
  lighter = 'grey30',
  light   = '#5d5d5d',
  medium  = 'grey60',
  dark    = 'grey95'
)

#' @rdname theme_hogwarts
#' @export
theme_ravenclaw <- function(ravenclaw_font = TRUE, ...){

  # CUSTOM FONT: add a custom font from google fonts
  font_family = ifelse(ravenclaw_font,"harrypotter","Serif") # use this line if you have a custom font
  if (ravenclaw_font) {
    initialize_font(name = "Henny Penny", family = "harrypotter")
  }

  # CUSTOM THEME:
  ggplot2::theme(
    panel.grid.minor = element_blank(),
    panel.grid.major = element_blank(),
    text = element_text(color = ravenclaw_theme_colors["text"], family = font_family),
    title = element_text(size=20),
    panel.background = element_rect(fill = ravenclaw_theme_colors["panel"]),
    panel.border = element_rect(fill = NA, color = ravenclaw_theme_colors["border"],linewidth=1.2),
    axis.title = element_text(size=17),
    axis.text = element_text(size=13,color = ravenclaw_theme_colors["text"]),
    axis.ticks = element_line(color = ravenclaw_theme_colors["border"],linewidth=1),
    legend.background = element_rect(fill = ravenclaw_theme_colors["panel"], color = NA),
    legend.text=element_text(color=ravenclaw_theme_colors["dark"]), legend.title = element_text(color=ravenclaw_theme_colors["dark"]),
    ...
  )
}

#' @rdname scale_hogwarts
#' @export
scale_fill_ravenclaw <- function(...) {
  ggplot2::scale_fill_gradient(low = ravenclaw_theme_colors["lighter"], high = ravenclaw_theme_colors["dark"], ...)
}

#' @rdname scale_hogwarts
#' @export
scale_color_ravenclaw <- function(...) {
  ggplot2::scale_color_gradient(low = ravenclaw_theme_colors["lighter"], high = ravenclaw_theme_colors["dark"], ...)
}

## hufflepuff #########
#' Hufflepuff Theme Color Palette
#'
#' @format character vector of hex code strings
#' @export
#'
#' @examples
#' hufflepuff_theme_colors
#'
hufflepuff_theme_colors <- c(
  text    = "#38302c",
  panel   = '#f8e7be',
  border  = '#38302c',
  lighter = '#eec55d',
  light   = '#eeb527',
  medium  = '#6d6158',
  dark    = '#38302c'
)

#' @rdname theme_hogwarts
#' @export
theme_hufflepuff <- function(hufflepuff_font = TRUE, ...){
 # CUSTOM FONT: add a custom font from google fonts
  font_family = ifelse(hufflepuff_font,"harrypotter","Serif") # use this line if you have a custom font
  if (hufflepuff_font) {
    initialize_font(name = "Henny Penny", family = "harrypotter")
  }

  # CUSTOM THEME:
  ggplot2::theme(
    panel.grid.minor = element_blank(),
    panel.grid.major = element_blank(),
    text = element_text(color = hufflepuff_theme_colors["text"], family = font_family),
    title = element_text(size=20),
    panel.background = element_rect(fill = hufflepuff_theme_colors["panel"]),
    panel.border = element_rect(fill = NA, color = hufflepuff_theme_colors["border"],linewidth=1.2),
    axis.title = element_text(size=17),
    axis.text = element_text(size=13,color = hufflepuff_theme_colors["text"]),
    axis.ticks = element_line(color = hufflepuff_theme_colors["border"],linewidth=1),
    legend.background = element_rect(fill = hufflepuff_theme_colors["panel"], color = NA),
    legend.text=element_text(color=hufflepuff_theme_colors["dark"]),
    legend.title = element_text(color=hufflepuff_theme_colors["dark"]),
    ...
  )
}

#' @rdname scale_hogwarts
#' @export
scale_fill_hufflepuff <- function(...) {
  ggplot2::scale_fill_gradient(low = hufflepuff_theme_colors["light"], high = hufflepuff_theme_colors["dark"], ...)
}

#' @rdname scale_hogwarts
#' @export
scale_color_hufflepuff <- function(...) {
  ggplot2::scale_color_gradient(low = hufflepuff_theme_colors["light"], high = hufflepuff_theme_colors["dark"], ...)
}

### slytherin ######
#' Slytherin Theme Color Palette
#'
#' @format character vector of hex code strings
#' @export
#'
#' @examples
#' slytherin_theme_colors
#'
slytherin_theme_colors <- c(
  text    = "#1a472a",
  panel   = '#aaaaaa',
  border  = '#2a623d',
  lighter = '#aaaaaa',
  light   = '#5d5d5d',
  medium  = '#2a623d',
  dark    = '#1a472a'
)

#' @rdname theme_hogwarts
#' @export
theme_slytherin <- function(slytherin_font = TRUE, ...){
  # CUSTOM FONT: add a custom font from google fonts
  font_family = ifelse(slytherin_font,"harrypotter","Serif") # use this line if you have a custom font
  if (slytherin_font) {
    initialize_font(name = "Henny Penny", family = "harrypotter")
  }

  # CUSTOM THEME:
  ggplot2::theme(
    panel.grid.minor = element_blank(),
    panel.grid.major = element_blank(),
    text = element_text(color = slytherin_theme_colors["text"], family = font_family),
    title = element_text(size=16),
    panel.background = element_rect(fill = slytherin_theme_colors["panel"]),
    panel.border = element_rect(fill = NA, color = slytherin_theme_colors["border"],linewidth=1.2),
    axis.title = element_text(size=17),
    axis.text = element_text(size=13,color = slytherin_theme_colors["text"]),
    axis.ticks = element_line(color = slytherin_theme_colors["border"],linewidth=1),
    legend.background = element_rect(fill = slytherin_theme_colors["panel"], color = slytherin_theme_colors["border"]),
    legend.text=element_text(color=slytherin_theme_colors["text"]), legend.title = element_text(color=slytherin_theme_colors["text"]),
    ...
  )
}

#' @rdname scale_hogwarts
#' @export
scale_fill_slytherin<- function(...) {
  ggplot2::scale_fill_gradient(low = slytherin_theme_colors["light"], high = slytherin_theme_colors["dark"], ...)
}

#' @rdname scale_hogwarts
#' @export
scale_color_slytherin <- function(...) {
  ggplot2::scale_color_gradient(low = slytherin_theme_colors["light"], high = slytherin_theme_colors["dark"], ...)
}
