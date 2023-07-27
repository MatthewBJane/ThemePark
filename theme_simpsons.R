## Tylor J Harlow
## theme_simpsons
## 06/25/2023

# SETUP: Needs ggplot2
require('ggplot2')

# CUSTOM FONT: add a custom font from google fonts
require('showtext')
font_add_google(name = "Rock Salt", family = "simpsons")
showtext_auto()


# COLOR: add, remove, or edit the colors to fit your scheme. Names should be
text_color_simpsons    <- '#3498dbff'
panel_color_simpsons   <- '#f7dc6fff'
border_color_simpsons  <- '#3498dbff'
lighter_color_simpsons <- '#fdfefeff'
light_color_simpsons   <- '#1e8449ff'
medium_color_simpsons  <- '#9c5b01ff'
dark_color_simpsons    <- '#1c2833ff'


# THEME: rename function and theme() arguments according to your theme design, feel free to edit this how you would like
theme_simpsons <- function(simpsons_font = FALSE){
  font_family = ifelse(simpsons_font,"simpsons","Arial") # use this line if you have a custom font 
  ggplot2::theme(
    panel.grid.minor = element_blank(),
    panel.grid.major = element_blank(),
    text = element_text(color = text_color_simpsons, family = font_family),
    title = element_text(size=20),
    panel.background = element_rect(fill = panel_color_simpsons),
    panel.border = element_rect(fill = NA, color = border_color_simpsons,linewidth=2),
    axis.title = element_text(size=17),
    axis.text = element_text(size=13,color = text_color_simpsons),
    axis.ticks = element_line(color = border_color_simpsons,linewidth=1.7),
    legend.background = element_rect(fill = panel_color_simpsons, color = NA),
    strip.background = element_rect(fill = lighter_color_simpsons, colour = border_color_simpsons),
    strip.text = element_text(colour = text_color_simpsons)
  )
}

# COLOR SCALES: Make pretty color scales 
scale_fill_simpsons <- ggplot2::scale_fill_gradient(low = '#eeb4d7ff', high = '#bf2986ff')
scale_color_simpsons <- ggplot2::scale_color_gradient(low = '#eeb4d7ff', high = '#bf2986ff')
