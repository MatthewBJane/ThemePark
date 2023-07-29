## Alex Slavenko
## theme_terminator
## 26/07/2023

# COLOR: add, remove, or edit the colors to fit your scheme (hex code preferred, but you can use any type). Names should be
panel_color_terminator     <- '#000000ff'
border_color_terminator    <- '#5A5A5A'
strip_color_terminator    <- '#242526'
text_color_terminator  <- '#ffffffff'
point_color_terminator      <- '#FF0000'
lighter_color_terminator    <- '#F69697'
light_color_terminator     <- '#D31A38'
medium_color_terminator    <- '#B11226'
dark_color_terminator      <- '#800808'


# THEME: rename function and theme() arguments according to your theme design, feel free to edit this how you would like
theme_terminator <- function(terminator_font = FALSE){

  # CUSTOM FONT: add a custom font from google fonts
  font_family = ifelse(terminator_font,"terminator","Arial") # use this line if you have a custom font
  if (terminator_font) {
    initialize_font(name = "Orbitron", family = "terminator")
  }

  # CUSTOM THEME:
  ggplot2::theme(
    panel.grid.minor = element_blank(),
    panel.grid.major = element_blank(),
    text = element_text(color = text_color_terminator, family = font_family),
    title = element_text(size=20),
    panel.background = element_rect(fill = panel_color_terminator),
    panel.border = element_rect(fill = NA, color = border_color_terminator,linewidth=1.4),
    axis.title = element_text(size=17),
    axis.text = element_text(size=15,color = text_color_terminator),
    axis.ticks = element_line(color = border_color_terminator,linewidth=1),
    legend.background = element_rect(fill = panel_color_terminator, color = NA),
    plot.background = element_rect(fill = panel_color_terminator),
    strip.background = element_rect(fill = strip_color_terminator, colour = border_color_terminator),
    strip.text = element_text(colour = text_color_terminator)
  )
}

# COLOR SCALES: Make pretty color scales
scale_fill_terminator <- ggplot2::scale_fill_gradient(low = lighter_color_terminator, high = dark_color_terminator)
scale_color_terminator <- ggplot2::scale_color_gradient(low = lighter_color_terminator, high = dark_color_terminator)
