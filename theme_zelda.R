## Alex Slavenko
## theme_zelda
## 25/07/2023

# CUSTOM FONT: add a custom font from google fonts
font_add_google(name = "Spectral SC", family = "zelda") 
showtext_auto()

# COLOR: add, remove, or edit the colors to fit your scheme (hex code preferred, but you can use any type). Names should be
text_color_zelda    <- '#1F4C73'
panel_color_zelda   <- '#F2EED8'
border_color_zelda  <- '#FBF6E2'
lighter_color_zelda <- '#C4F9F3'
light_color_zelda   <- '#65D6B8'
medium_color_zelda  <- '#3C92A6'
dark_color_zelda    <- '#1F4C73'
zelda_palette <- c('#494b4b', '#0e5135','#0d9263','#4aba91','#d4ce46')


# THEME: rename function and theme() arguments according to your theme design, feel free to edit this how you would like
theme_zelda <- function(zelda_font = FALSE){
    font_family = ifelse(zelda_font,"zelda","Arial") # use this line if you have a custom font 
    ggplot2::theme(
        panel.grid.minor = element_blank(),
        panel.grid.major = element_blank(),
        text = element_text(color = text_color_zelda, family = font_family),
        title = element_text(size=20),
        panel.background = element_rect(fill = panel_color_zelda),
        panel.border = element_rect(fill = NA, color = border_color_zelda,linewidth=1.2),
        axis.title = element_text(size=17),
        axis.text = element_text(size=13),
        axis.ticks = element_line(color = border_color_zelda,linewidth=1),
        legend.background = element_rect(fill = panel_color_zelda, color = NA),
        strip.background = element_rect(fill = lighter_color_zelda, colour = border_color_zelda),
        strip.text = element_text(colour = text_color_zelda)
    )
}

# COLOR SCALES: Make pretty color scales 
scale_fill_zelda <- ggplot2::scale_fill_gradient(low = lighter_color_zelda, high = dark_color_zelda)
scale_color_zelda <- ggplot2::scale_color_gradient(low = lighter_color_zelda, high = dark_color_zelda)
