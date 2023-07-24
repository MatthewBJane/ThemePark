require('ggplot2')
require('showtext')

font_add_google(name = "IM Fell English", family = "oppenheimer")

coolflame_color_oppenheimer <- '#fdc232ff'
flame_color_oppenheimer     <- '#fd8532ff'
hotflame_color_oppenheimer  <- '#fd4b32ff'
panel_color_oppenheimer     <- '#222222ff'
border_color_oppenheimer    <- '#000000ff'
lightmain_color_oppenheimer <- '#eeb4d7ff'
text_color_oppenheimer      <- '#393939ff'
light_color_oppenheimer     <- '#6b6b6bff'
medium_color_oppenheimer    <- '#323232ff'
dark_color_oppenheimer      <- '#000000ff'


theme_oppenheimer <- function(oppenheimer_font=FALSE){
  #font_family <- ifelse(oppenheimer_font,"oppenheimer", "sans")
  font_family <- "sans"
  ggplot2::theme(
        panel.grid.minor = element_blank(),
        panel.grid.major = element_blank(),
        text = element_text(color = text_color_oppenheimer, family = font_family),
        title = element_text(size=20),
        panel.background = element_rect(fill = panel_color_oppenheimer),
        panel.border = element_rect(fill = NA, color = border_color_oppenheimer,linewidth=1.4),
        axis.title = element_text(size=17),
        axis.text = element_text(size=15),
        axis.ticks = element_line(color = border_color_oppenheimer,linewidth=1),
        legend.background = element_rect(fill = panel_color_oppenheimer, color = NA)
       )
}


scale_fill_oppenheimer_smoke <- ggplot2::scale_fill_gradient(low = coolflame_color_oppenheimer, high = hotflame_color_oppenheimer)
scale_color_oppenheimer_smoke <- ggplot2::scale_color_gradient(low = coolflame_color_oppenheimer, high = hotflame_color_oppenheimer)

scale_fill_oppenheimer_flame <- ggplot2::scale_fill_gradient(low = light_color_oppenheimer, high = dark_color_oppenheimer)
scale_color_oppenheimer_flame <- ggplot2::scale_color_gradient(low = light_color_oppenheimer, high = dark_color_oppenheimer)
