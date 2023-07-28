## Francisco Garre - Frutos
## theme_godfather
## 07/27/2023

require('ggplot2')
require('showtext')

font_add_google(name = "Rye", family = "godfather") 
showtext_auto()

text_color_godfather    <- '#d3cfc3'
panel_color_godfather   <- '#030303'
border_color_godfather  <- '#d3cfc3'
lighter_color_godfather <- '#d3cfc3'
light_color_godfather   <- '#912411'
medium_color_godfather  <- '#d3cfc3'
dark_color_godfather    <- '#912411'


theme_godfather <- function(godfather_font = FALSE){
  font_family = ifelse(godfather_font,"godfather","Arial") # use this line if you have a custom font 
  ggplot2::theme(
    panel.grid.minor = element_blank(),
    panel.grid.major = element_blank(),
    text = element_text(color = text_color_godfather, family = font_family),
    title = element_text(size=20),
    panel.background = element_rect(fill = panel_color_godfather),
    panel.border = element_rect(fill = NA, color = border_color_godfather,linewidth=1.2),
    plot.background = element_rect(fill = panel_color_godfather),
    axis.title = element_text(size=17),
    axis.text = element_text(size=13,color = text_color_godfather),
    axis.ticks = element_line(color = border_color_godfather,linewidth=1),
    legend.background = element_rect(fill = panel_color_godfather, color = NA),
    strip.background = element_rect(fill = lighter_color_godfather, colour = border_color_godfather),
    strip.text = element_text(colour = text_color_godfather)
  )
}

scale_fill_godfather <- ggplot2::scale_fill_gradient(low = lighter_color_godfather, high = dark_color_godfather)
scale_color_godfather <- ggplot2::scale_color_gradient(low = lighter_color_godfather, high = dark_color_godfather)
