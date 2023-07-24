## YOUR NAME
## theme_XXXX
## Date Created

# CUSTOM FONT: add a custom font from google fonts
font_add_google(name = "GOOGLE FONT NAME", family = "XXXX") 
showtext_auto()

# COLOR: add, remove, or edit the colors to fit your scheme (hex code preferred, but you can use any type). Names should be
text_color_XXXX    <- '#a62675ff'
panel_color_XXXX   <- '#fdf6faff'
border_color_XXXX  <- '#d74ea2ff'
lighter_color_XXXX <- '#f5d1e6ff'
light_color_XXXX   <- '#eeb4d7ff'
medium_color_XXXX  <- '#d74ea2ff'
dark_color_XXXX    <- '#bf2986ff'


# THEME: rename function and theme() arguments according to your theme design, feel free to edit this how you would like
theme_XXXX <- function(XXXX_font = FALSE){
  font_family = ifelse(XXXX_font,"XXXX","Arial") # use this line if you have a custom font 
  ggplot2::theme(
        panel.grid.minor = element_blank(),
        panel.grid.major = element_blank(),
        text = element_text(color = text_color_XXXX, family = font_family),
        title = element_text(size=20),
        panel.background = element_rect(fill = panel_color_XXXX),
        panel.border = element_rect(fill = NA, color = border_color_XXXX,linewidth=1.2),
        axis.title = element_text(size=17),
        axis.text = element_text(size=13),
        axis.ticks = element_line(color = border_color_XXXX,linewidth=1),
        legend.background = element_rect(fill = panel_color_XXXX, color = NA)
       )
}

# COLOR SCALES: Make pretty color scales 
scale_fill_XXXX <- ggplot2::scale_fill_gradient(low = lighter_color_XXXX, high = dark_color_XXXX)
scale_color_XXXX <- ggplot2::scale_color_gradient(low = lighter_color_XXXX, high = dark_color_XXXX)


