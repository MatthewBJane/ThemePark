## Velu P K Immonen
## theme_spiderman
## 07/25/2023

# CUSTOM FONT: add a custom font from google fonts
font_add_google(name = "Bangers", family = "spiderman")
showtext_auto()

# COLOR: add, remove, or edit the colors to fit your scheme (hex code preferred, but you can use any type). Names should be
text_color_spiderman    <- '#101010'
panel_color_spiderman   <- '#de0619'
border_color_spiderman  <- '#101010'
medium_color_spiderman <- '#e55751'
dark_color_spiderman   <- '#601a18'
white_color_spiderman  <-  '#fefefe'
blue_color_spiderman    <- '#333399ff'


# THEME: rename function and theme() arguments according to your theme design, feel free to edit this how you would like
theme_spiderman <- function(spiderman_font = FALSE){
    font_family = ifelse(spiderman_font,"spiderman","Arial") # use this line if you have a custom font
    ggplot2::theme(
        panel.grid.minor = element_blank(),
        panel.grid.major = element_line(color = '#00000055'),
        text = element_text(color = text_color_spiderman, family = font_family),
        title = element_text(size=20),
        panel.background = element_rect(fill = panel_color_spiderman),
        panel.border = element_rect(fill = NA, color = border_color_spiderman,linewidth=1.2),
        axis.title = element_text(size=17),
        axis.text = element_text(size=13,color = text_color_spiderman),
        axis.ticks = element_line(color = border_color_spiderman,linewidth=1),
        legend.background = element_rect(fill = panel_color_spiderman, color = NA)
    )
}

# COLOR SCALES: Make pretty color scales
scale_fill_spiderman <- ggplot2::scale_fill_gradient(low = medium_color_spiderman, high = blue_color_spiderman)
scale_color_spiderman <- ggplot2::scale_color_gradient(low = medium_color_spiderman, high = blue_color_spiderman)
