## Matthew B Jané
## theme_barbie
## 06/24/2023

# SETUP: Needs ggplot2
require('ggplot2')

# CUSTOM FONT: add a custom font from google fonts
require('showtext')
font_add_google(name = "Sansita Swashed", family = "barbie")
showtext_auto()


# COLOR: add, remove, or edit the colors to fit your scheme. Names should be
text_color_barbie    <- '#a62675ff'
panel_color_barbie   <- '#fdf6faff'
border_color_barbie  <- '#d74ea2ff'
lighter_color_barbie <- '#f5d1e6ff'
light_color_barbie   <- '#eeb4d7ff'
medium_color_barbie  <- '#d74ea2ff'
dark_color_barbie    <- '#bf2986ff'


# THEME: rename function and theme() arguments according to your theme design, feel free to edit this how you would like
theme_barbie <- function(barbie_font = FALSE){
  font_family = ifelse(barbie_font,"barbie","Arial") # use this line if you have a custom font 
  ggplot2::theme(
        panel.grid.minor = element_blank(),
        panel.grid.major = element_blank(),
        text = element_text(color = text_color_barbie, family = font_family),
        title = element_text(size=20),
        panel.background = element_rect(fill = panel_color_barbie),
        panel.border = element_rect(fill = NA, color = border_color_barbie,linewidth=1.2),
        axis.title = element_text(size=17),
        axis.text = element_text(size=13,color = text_color_barbie),
        axis.ticks = element_line(color = border_color_barbie,linewidth=1),
        legend.background = element_rect(fill = panel_color_barbie, color = NA),
        strip.background = element_rect(fill = lighter_color_barbie, colour = border_color_barbie),
        strip.text = element_text(colour = text_color_barbie)
       )
}

# COLOR SCALES: Make pretty color scales 
scale_fill_barbie <- ggplot2::scale_fill_gradient(low = '#eeb4d7ff', high = '#bf2986ff')
scale_color_barbie <- ggplot2::scale_color_gradient(low = '#eeb4d7ff', high = '#bf2986ff')



