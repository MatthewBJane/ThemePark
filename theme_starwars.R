## Matthew B Jané
## theme_starwars
## 06/24/2023

require('ggplot2')
require('showtext')

font_add_google(name = "Russo One", family = "starwars")
showtext_auto()


panel_color_starwars     <- '#000000ff'
border_color_starwars    <- '#000000ff'
lightmain_color_starwars <- '#eeb4d7ff'
goldtext_color_starwars  <- '#f1e81fff'
darktext_color_starwars  <- '#111111ff'
star_color_starwars      <- '#ffffffff'
light_color_starwars     <- '#faf7b5ff'
medium_color_starwars    <- '#f1e81fff'
dark_color_starwars      <- '#989209ff'


theme_starwars <- function(starwars_font=FALSE){
  font_family <- ifelse(starwars_font,"starwars", "sans")
  ggplot2::theme(
        panel.grid.minor = element_blank(),
        panel.grid.major = element_blank(),
        text = element_text(color = goldtext_color_starwars, family = font_family),
        title = element_text(size=20),
        panel.background = element_rect(fill = panel_color_starwars),
        panel.border = element_rect(fill = NA, color = border_color_starwars,linewidth=1.4),
        axis.title = element_text(size=17),
        axis.text = element_text(size=15,color = goldtext_color_starwars),
        axis.ticks = element_line(color = border_color_starwars,linewidth=1),
        legend.background = element_rect(fill = panel_color_starwars, color = NA),
         plot.background = element_rect(fill = panel_color_starwars)
       )
}


scale_fill_starwars <- ggplot2::scale_fill_gradient(low = light_color_starwars, high = dark_color_starwars)
scale_color_starwars <- ggplot2::scale_color_gradient(low = light_color_starwars, high = dark_color_starwars)
