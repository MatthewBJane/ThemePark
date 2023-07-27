## Velu P K Immonen
## theme_avatar
## 07/26/2023

# CUSTOM FONT: add a custom font from google fonts
font_add_google(name = "IM Fell English", family = "avatar")
showtext_auto()

# COLOR: add, remove, or edit the colors to fit your scheme (hex code preferred, but you can use any type). Names should be
border_color_avatar  <- '#0F2347'
dark_color_avatar    <- '#1C3F6E'
medium_color_avatar  <- '#2E67A0'
light_color_avatar   <- '#5AACCF'
point_color_avatar   <- '#EFFC93'


# THEME: rename function and theme() arguments according to your theme design, feel free to edit this how you would like
theme_avatar <- function(avatar_font = FALSE){
  font_family = ifelse(avatar_font,"avatar","Arial") # use this line if you have a custom font
  ggplot2::theme(
    panel.grid.minor = element_blank(),
    panel.grid.major = element_blank(),
    text = element_text(color = border_color_avatar, family = font_family),
    title = element_text(size=20),
    panel.background = element_rect(fill = dark_color_avatar),
    panel.border = element_rect(fill = NA, color = border_color_avatar,linewidth=1.2),
    axis.title = element_text(size=17),
    axis.text = element_text(size=13,color = border_color_avatar),
    axis.ticks = element_line(color = border_color_avatar,linewidth=1),
    legend.background = element_rect(fill = dark_color_avatar, color = NA),
    strip.background = element_rect(fill = point_color_avatar, colour = border_color_avatar),
    strip.text = element_text(colour = border_color_avatar)
  )
}

# COLOR SCALES: Make pretty color scales
scale_fill_avatar <- ggplot2::scale_fill_gradient(low = medium_color_avatar, high = dark_color_avatar)
scale_color_avatar <- ggplot2::scale_color_gradient(low = medium_color_avatar, high = dark_color_avatar)
