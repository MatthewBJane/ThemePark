require('ggplot2')
require('showtext')

font_add_google(name = "Sansita Swashed", family = "barbie")


text_color_barbie    <- '#a62675ff'
panel_color_barbie   <- '#fdf6faff'
border_color_barbie  <- '#d74ea2ff'
lighter_color_barbie <- '#f5d1e6ff'
light_color_barbie   <- '#eeb4d7ff'
medium_color_barbie  <- '#d74ea2ff'
dark_color_barbie    <- '#bf2986ff'


theme_barbie <- function(barbie_font = TRUE){
  font_family = ifelse(barbie_font,"barbie","Arial")
  element_text(color = text_color_barbie)
  ggplot2::theme(
        panel.grid.minor = element_blank(),
        panel.grid.major = element_blank(),
        text = element_text(color = text_color_barbie, family = font_family),
        title = element_text(size=20),
        panel.background = element_rect(fill = panel_color_barbie),
        panel.border = element_rect(fill = NA, color = border_color_barbie,linewidth=1.2),
        axis.title = element_text(size=17),
        axis.text = element_text(size=13),
        axis.ticks = element_line(color = border_color_barbie,linewidth=1),
        legend.background = element_rect(fill = panel_color_barbie, color = NA)
       )
}


scale_fill_barbie <- ggplot2::scale_fill_gradient(low = '#eeb4d7ff', high = '#bf2986ff')
scale_color_barbie <- ggplot2::scale_color_gradient(low = '#eeb4d7ff', high = '#bf2986ff')



