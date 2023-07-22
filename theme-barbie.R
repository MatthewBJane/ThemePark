require('ggplot2')

theme_barbie <- function(legend.position = "none"){
  ggplot2::theme(panel.grid.minor = element_blank(),
        panel.grid.major = element_blank(),
        title = element_text(color = '#a62675ff'),
        panel.background = element_rect(fill = '#fdf6faff'),
        panel.border = element_rect(fill = NA, color = '#d74ea2ff',linewidth=1.2),
        axis.title = element_text(size=14, color = '#a62675ff'),
        axis.text.x = element_text(size=12, color = '#a62675ff'),
        axis.text.y = element_text(size=12, color = '#a62675ff'),
        axis.ticks = element_line(color = '#d74ea2ff',linewidth=1),
        legend.background = '#fdf6faff',
        legend.text = element_text(color = '#a62675ff'),
        legend.text = element_text(color = '#a62675ff')
       )
}


scale_fill_barbie <- ggplot2::scale_fill_gradient(low = '#eeb4d7ff', high = '#bf2986ff')


text_color_barbie    <- '#a62675ff'
panel_color_barbie   <- '#fdf6faff'
border_color_barbie  <- '#d74ea2ff'
light_color_barbie   <- '#eeb4d7ff'
medium_color_barbie  <- '#d74ea2ff'
dark_color_barbie    <- '#bf2986ff'
