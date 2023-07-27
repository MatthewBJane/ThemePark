## Ethan Milne
## theme_lordoftherings
## 24/07/2023

# CUSTOM FONT: add a custom font from google fonts
sysfonts::font_add_google(name = "Lugrasimo", family = "lordoftherings", db_cache = FALSE) 
showtext::showtext_auto()

# COLOR: add, remove, or edit the colors to fit your scheme (hex code preferred, but you can use any type). Names should be
text_color_lordoftherings    <- '#020203'
panel_color_lordoftherings   <- '#e0dcce'
border_color_lordoftherings  <- '#ab8d59'
lighter_color_lordoftherings <- '#6bb49e'
light_color_lordoftherings   <- '#89b498'
medium_color_lordoftherings  <- '#559468'
dark_color_lordoftherings    <- '#34684f'
sauron_palette <- c('#fcd882', '#e8a578','#df7b75','#4e2828','#180109')

# THEME: rename function and theme() arguments according to your theme design, feel free to edit this how you would like
theme_lordoftherings <- function(lordoftherings_font = FALSE){
    font_family = ifelse(lordoftherings_font,"lordoftherings","Arial") # use this line if you have a custom font 
    ggplot2::theme(
        panel.grid.minor = element_blank(),
        panel.grid.major = element_blank(),
        text = element_text(color = text_color_lordoftherings, family = font_family),
        title = element_text(size=20),
        panel.background = element_rect(fill = panel_color_lordoftherings),
        panel.border = element_rect(fill = NA, color = border_color_lordoftherings, size = 2),
        axis.title = element_text(size=17),
        axis.text = element_text(size=13),
        axis.ticks = element_line(color = border_color_lordoftherings, size = 1.2), 
        legend.background = element_rect(fill = panel_color_lordoftherings, color = NA)
    )
}

# COLOR SCALES: Make pretty color scales 
scale_fill_lordoftherings <- ggplot2::scale_fill_gradient(low = lighter_color_lordoftherings, high = dark_color_lordoftherings)
scale_color_lordoftherings <- ggplot2::scale_color_gradient(low = lighter_color_lordoftherings, high = dark_color_lordoftherings)

