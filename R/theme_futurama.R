## Tylor J Harlow
## theme_futurama
## 06/25/2023




# CUSTOM FONT: add a custom font from google fonts

sysfonts::font_add_google(name = "Dongle", family = "futurama")
showtext::showtext_auto()


# COLOR: add, remove, or edit the colors to fit your scheme. Names should be
text_color_futurama    <- '#e74c3cff'
panel_color_futurama   <- '#abebc6ff'
border_color_futurama  <- '#abb2b9ff'
lighter_color_futurama <- '#f4d03fff'
light_color_futurama   <- '#1e8449ff'
medium_color_futurama  <- '#ec7063ff'
dark_color_futurama    <- '#e74c3cff'


# THEME: rename function and theme() arguments according to your theme design, feel free to edit this how you would like
theme_futurama <- function(futurama_font = FALSE){
  font_family = ifelse(futurama_font,"futurama","Arial") # use this line if you have a custom font 
  text_size_increase = ifelse(futurama_font,6,0) # add text size for custom text
  ggplot2::theme(
    panel.grid.minor = element_blank(),
    panel.grid.major = element_blank(),
    text = element_text(color = text_color_futurama, family = font_family, size = 10),
    title = element_text(size=20+text_size_increase),
    panel.background = element_rect(fill = panel_color_futurama),
    panel.border = element_rect(fill = NA, color = border_color_futurama,linewidth=2),
    axis.title = element_text(size=17+text_size_increase),
    axis.text = element_text(size=13+text_size_increase,color = text_color_futurama),
    axis.ticks = element_line(color = border_color_futurama,linewidth=1.7),
    legend.background = element_rect(fill = panel_color_futurama, color = NA),
    strip.background = element_rect(fill = lighter_color_futurama, colour = border_color_futurama),
    strip.text = element_text(colour = text_color_futurama)
  )
}

# COLOR SCALES: Make pretty color scales 
scale_fill_futurama <- ggplot2::scale_fill_gradient(low = '#eeb4d7ff', high = '#bf2986ff')
scale_color_futurama <- ggplot2::scale_color_gradient(low = '#eeb4d7ff', high = '#bf2986ff')
