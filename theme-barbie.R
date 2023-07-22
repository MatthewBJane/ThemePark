theme_barbie <- function(legend.position = "none"){
  theme(panel.grid.minor = element_blank(),
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


scale_fill_barbie <- ggplot::scale_fill_gradient(low = '#eeb4d7ff', high = '#bf2986ff')
