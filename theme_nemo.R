## Christopher T. Kenny
## theme_nemo
## 2023-07-27

# SETUP: Needs ggplot2
require('ggplot2')

# CUSTOM FONT: add a custom font from google fonts
require('showtext')
font_add_google(name = "Bowlby One SC")
showtext_auto()

# COLOR: add, remove, or edit the colors to fit your scheme. Names should be
background_color_nemo <- '#0739B9'
text_color_nemo    <- '#FEFFFE'
panel_fill_nemo   <- '#00B4EF'
panel_color_nemo <- '#FDF122'
strip_text_nemo <- '#010203'
border_color_nemo  <- '#000000'
lighter_color_nemo <- '#FDF122' #'#E2F2FD'
light_color_nemo   <- 'white' #'#F6F1F2'
medium_color_nemo  <- '#FE691D'
dark_color_nemo    <- '#FA3C2E'


#' Finding Nemo Inspired Theme
#'
#' @param nemo_font should `theme_nemo` use Google Font's Bowlby One SC? Default is `FALSE`.
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
#'   labs(title = 'Nemo Scatter Plot') + 
#'   theme_nemo(nemo_font = TRUE) 
#' 
#' ggplot(mpg, aes(cty)) +
#' geom_density(aes(fill=factor(cyl)), alpha=0.8) + 
#'   labs(title="Density plot", 
#'        subtitle="City Mileage Grouped by Number of cylinders",
#'        caption="Source: mpg",
#'        x="City Mileage",
#'        fill="# Cylinders") +
#'   theme_nemo(nemo_font = TRUE) +
#'   scale_fill_nemo_d()
#'
#' 
theme_nemo <- function(nemo_font = FALSE) {
  font_family <- ifelse(nemo_font, 'Bowlby One SC', 'sans') # use this line if you have a custom font
  ggplot2::theme(
    plot.background = element_rect(fill = background_color_nemo),
    text = element_text(color = text_color_nemo, family = font_family),
    title = element_text(size = 20),
    panel.grid.minor = element_blank(),
    panel.grid.major = element_blank(),
    panel.background = element_rect(fill = panel_fill_nemo, color = panel_color_nemo),
    panel.border = element_rect(fill = NA, color = border_color_nemo, linewidth = 1.2),
    axis.title = element_text(size = 17),
    axis.text = element_text(size = 13, color = text_color_nemo),
    axis.ticks = element_line(color = border_color_nemo, linewidth = 1),
    legend.background = element_rect(fill = panel_fill_nemo, color = NA),
    strip.background = element_rect(fill = lighter_color_nemo, colour = border_color_nemo),
    strip.text = element_text(colour = strip_text_nemo, size = 10)
  )
}

# COLOR SCALES: Make pretty color scales

#' Finding Nemo Inspired Color Scales
#' 
#' @param ... Additional arguments to pass to `ggplot2::binned_scale` for `_b`,
#' `ggplot2::scale_[fill/color]_gradient` for `_c`, or `ggplot2::discrete_scale`
#' 
#' @return description
#' 
#' @rdname scale_nemo
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
#'   theme_nemo(nemo_font = TRUE) +
#'   scale_fill_nemo_d()
#'   
scale_color_nemo_c <- function(...) {
  ggplot2::scale_color_gradient(..., low = light_color_nemo, high = dark_color_nemo)
}

#' @rdname scale_nemo
#' @export
scale_fill_nemo_c <- function(...) {
  ggplot2::scale_fill_gradient(..., low = light_color_nemo, high = dark_color_nemo)
}

#' @rdname scale_nemo
#' @export
scale_color_nemo_b <- function(...) {
  if (!requireNamespace('scales', quietly = TRUE)) {
    stop('This function requires the `scales` R package.')
  }
  ramp <- scales::colour_ramp(c(light_color_nemo, dark_color_nemo))
  ggplot2::binned_scale('color', 'nemo', palette = ramp, ...)
}

#' @rdname scale_nemo
#' @export
scale_fill_nemo_b <- function(...) {
  if (!requireNamespace('scales', quietly = TRUE)) {
    stop('This function requires the `scales` R package.')
  }
  ramp <- scales::colour_ramp(c(light_color_nemo, dark_color_nemo))
  ggplot2::binned_scale('fill', 'nemo', palette = ramp, ...)
}

nemo_colors <- c(
  '#E9F4FB', '#FE691D', '#015DC2', '#FCDD2E', '#7867A0', 
  '#BE1D57', '#798A5A', '#005478','#1B1A3D'
)

#' @rdname scale_nemo
#' @export
scale_color_nemo_d <- function(...) {
  ggplot2::discrete_scale(aesthetics = 'color', scale_name = nemo_colors,
                          palette = rot_pal(nemo_colors), ...)
}

#' @rdname scale_nemo
#' @export
scale_fill_nemo_d <- function(...) {
  ggplot2::discrete_scale(aesthetics = 'fill', scale_name = nemo_colors, ...,
                          palette = rot_pal(nemo_colors))
}

#' @rdname scale_nemo
#' @export
scale_colour_nemo_d <- scale_color_nemo_d

#' @rdname scale_nemo
#' @export
scale_colour_nemo_c <- scale_color_nemo_c

#' @rdname scale_nemo
#' @export
scale_colour_nemo_b <- scale_color_nemo_b

# utility fn that can be moved to a utils.R file if turned into a pkg
# from https://github.com/christopherkenny/crayons
# licensed under MIT
rot_pal <- function(pal) {
  pal <- unname(pal)
  function(n) {
    if (n <= length(pal)) {
      pal[seq_len(n)]
    } else {
      rep(pal, ceiling(n / length(pal)))[seq_len(n)]
    }
  }
}
