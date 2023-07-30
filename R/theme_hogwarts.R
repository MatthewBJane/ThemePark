## Begum Ozemek
## theme_slytherin, theme_ravenclaw, theme_hufflepuff, theme_gryffindor
## 25.07.2023

## gryffindor
text_color_gryffindor    <- '#000000'
panel_color_gryffindor   <- '#ffb832'
border_color_gryffindor  <- '#5c0000'
lighter_color_gryffindor <- '#ffa700'
light_color_gryffindor   <- '#fb7e00'
medium_color_gryffindor  <- '#c50000'
dark_color_gryffindor    <- '#890000'

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
theme_gryffindor <- function(gryffindor_font = TRUE){
  # CUSTOM FONT: add a custom font from google fonts
  font_family = ifelse(gryffindor_font,"harrypotter","Serif") # use this line if you have a custom font
  if (gryffindor_font) {
    initialize_font(name = "Henny Penny", family = "harrypotter")
  }

  # CUSTOM THEME:
  ggplot2::theme(
    panel.grid.minor = element_blank(),
    panel.grid.major = element_blank(),
    text = element_text(color = text_color_gryffindor, family = font_family),
    title = element_text(size=20),
    panel.background = element_rect(fill = panel_color_gryffindor),
    panel.border = element_rect(fill = NA, color = border_color_gryffindor,linewidth=1.2),
    axis.title = element_text(size=17),
    axis.text = element_text(size=13,color = text_color_gryffindor),
    axis.ticks = element_line(color = border_color_gryffindor,linewidth=1),
    legend.background = element_rect(fill = panel_color_gryffindor, color = NA)
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
  ggplot2::scale_fill_gradient(low = light_color_gryffindor, high = dark_color_gryffindor, ...)
}

#' @rdname scale_hogwarts
#' @export
scale_color_gryffindor <- function(...) {
  ggplot2::scale_color_gradient(low = light_color_gryffindor, high = dark_color_gryffindor, ...)
}

## RAWENCLAW ######
text_color_ravenclaw    <- "grey60"
panel_color_ravenclaw   <- '#0e1a40'
border_color_ravenclaw  <- 'grey80'
lighter_color_ravenclaw <- 'grey30'
light_color_ravenclaw   <- '#5d5d5d'
medium_color_ravenclaw  <- 'grey60'
dark_color_ravenclaw    <- 'grey95'

#' @rdname theme_hogwarts
#' @export
theme_ravenclaw <- function(ravenclaw_font = TRUE){

  # CUSTOM FONT: add a custom font from google fonts
  font_family = ifelse(ravenclaw_font,"harrypotter","Serif") # use this line if you have a custom font
  if (ravenclaw_font) {
    initialize_font(name = "Henny Penny", family = "harrypotter")
  }

  # CUSTOM THEME:
  ggplot2::theme(
    panel.grid.minor = element_blank(),
    panel.grid.major = element_blank(),
    text = element_text(color = text_color_ravenclaw, family = font_family),
    title = element_text(size=20),
    panel.background = element_rect(fill = panel_color_ravenclaw),
    panel.border = element_rect(fill = NA, color = border_color_ravenclaw,linewidth=1.2),
    axis.title = element_text(size=17),
    axis.text = element_text(size=13,color = text_color_ravenclaw),
    axis.ticks = element_line(color = border_color_ravenclaw,linewidth=1),
    legend.background = element_rect(fill = panel_color_ravenclaw, color = NA),
    legend.text=element_text(color=dark_color_ravenclaw), legend.title = element_text(color=dark_color_ravenclaw)
  )
}

#' @rdname scale_hogwarts
#' @export
scale_fill_ravenclaw <- function(...) {
  ggplot2::scale_fill_gradient(low = lighter_color_ravenclaw, high = dark_color_ravenclaw, ...)
}

#' @rdname scale_hogwarts
#' @export
scale_color_ravenclaw <- function(...) {
  ggplot2::scale_color_gradient(low = lighter_color_ravenclaw, high = dark_color_ravenclaw, ...)
}

## hufflepuff #########
text_color_hufflepuff    <- "#38302c"
panel_color_hufflepuff   <- '#f8e7be'
border_color_hufflepuff  <- '#38302c'
lighter_color_hufflepuff <- '#eec55d'
light_color_hufflepuff   <- '#eeb527'
medium_color_hufflepuff  <- '#6d6158'
dark_color_hufflepuff    <- '#38302c'

#' @rdname theme_hogwarts
#' @export
theme_hufflepuff <- function(hufflepuff_font = TRUE){
 # CUSTOM FONT: add a custom font from google fonts
  font_family = ifelse(hufflepuff_font,"harrypotter","Serif") # use this line if you have a custom font
  if (hufflepuff_font) {
    initialize_font(name = "Henny Penny", family = "harrypotter")
  }

  # CUSTOM THEME:
  ggplot2::theme(
    panel.grid.minor = element_blank(),
    panel.grid.major = element_blank(),
    text = element_text(color = text_color_hufflepuff, family = font_family),
    title = element_text(size=20),
    panel.background = element_rect(fill = panel_color_hufflepuff),
    panel.border = element_rect(fill = NA, color = border_color_hufflepuff,linewidth=1.2),
    axis.title = element_text(size=17),
    axis.text = element_text(size=13,color = text_color_hufflepuff),
    axis.ticks = element_line(color = border_color_hufflepuff,linewidth=1),
    legend.background = element_rect(fill = panel_color_hufflepuff, color = NA),
    legend.text=element_text(color=dark_color_hufflepuff), legend.title = element_text(color=dark_color_hufflepuff)
  )
}

#' @rdname scale_hogwarts
#' @export
scale_fill_hufflepuff <- function(...) {
  ggplot2::scale_fill_gradient(low = light_color_hufflepuff, high = dark_color_hufflepuff, ...)
}

#' @rdname scale_hogwarts
#' @export
scale_color_hufflepuff <- function(...) {
  ggplot2::scale_color_gradient(low = light_color_hufflepuff, high = dark_color_hufflepuff, ...)
}

### slytherin ######
text_color_slytherin   <- "#1a472a"
panel_color_slytherin   <- '#aaaaaa'
border_color_slytherin  <- '#2a623d'
lighter_color_slytherin <- '#aaaaaa'
light_color_slytherin   <- '#5d5d5d'
medium_color_slytherin  <- '#2a623d'
dark_color_slytherin    <- '#1a472a'

#' @rdname theme_hogwarts
#' @export
theme_slytherin <- function(slytherin_font = TRUE){
  # CUSTOM FONT: add a custom font from google fonts
  font_family = ifelse(slytherin_font,"harrypotter","Serif") # use this line if you have a custom font
  if (slytherin_font) {
    initialize_font(name = "Henny Penny", family = "harrypotter")
  }

  # CUSTOM THEME:
  ggplot2::theme(
    panel.grid.minor = element_blank(),
    panel.grid.major = element_blank(),
    text = element_text(color = text_color_slytherin, family = font_family),
    title = element_text(size=16),
    panel.background = element_rect(fill = panel_color_slytherin),
    panel.border = element_rect(fill = NA, color = border_color_slytherin,linewidth=1.2),
    axis.title = element_text(size=17),
    axis.text = element_text(size=13,color = text_color_slytherin),
    axis.ticks = element_line(color = border_color_slytherin,linewidth=1),
    legend.background = element_rect(fill = panel_color_slytherin, color = border_color_slytherin),
    legend.text=element_text(color=text_color_slytherin), legend.title = element_text(color=text_color_slytherin)
  )
}

#' @rdname scale_hogwarts
#' @export
scale_fill_slytherin<- function(...) {
  ggplot2::scale_fill_gradient(low = light_color_slytherin, high = dark_color_slytherin, ...)
}

#' @rdname scale_hogwarts
#' @export
scale_color_slytherin <- function(...) {
  ggplot2::scale_color_gradient(low = light_color_slytherin, high = dark_color_slytherin, ...)
}
