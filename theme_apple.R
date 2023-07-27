## Daniel He
## theme_apple
## 07/26/2023
# inspired by graphs from https://www.apple.com/newsroom/2021/10/introducing-m1-pro-and-m1-max-the-most-powerful-chips-apple-has-ever-built/

require('ggplot2')
require('showtext')

# CUSTOM FONT: add a custom font from google fonts
font_add_google(name = "Inter", family = "apple", regular.wt = 500, bold.wt = 600)
showtext_auto()

# COLORS: take from https://developer.apple.com/design/human-interface-guidelines/color
apple_axis <- rgb(28,28,30, maxColorValue = 255)
apple_text <- rgb(99,99,102, maxColorValue = 255)

apple_palette_light = c(rgb(255,59,48, maxColorValue = 255), rgb(255,149,0, maxColorValue = 255), 
                        rgb(255,204,0, maxColorValue = 255), rgb(40,205,65, maxColorValue = 255),
                        rgb(0,199,190, maxColorValue = 255), rgb(89,173,196, maxColorValue = 255),
                        rgb(85,190,240, maxColorValue = 255), rgb(0,122,255, maxColorValue = 255),
                        rgb(88,86,214, maxColorValue = 255), rgb(175,82,222, maxColorValue = 255),
                        rgb(255,45,85, maxColorValue = 255), rgb(162,132,94, maxColorValue = 255),
                        rgb(142,142,147, maxColorValue = 255)
                        )
apple_palette_dark = c(rgb(255,69,58, maxColorValue = 255), rgb(255,159,10, maxColorValue = 255), 
                        rgb(255,214,10, maxColorValue = 255), rgb(50,215,75, maxColorValue = 255),
                        rgb(102,212,207, maxColorValue = 255), rgb(106,196,220, maxColorValue = 255),
                        rgb(90,200,245, maxColorValue = 255), rgb(10,132,255, maxColorValue = 255),
                        rgb(94,92,230, maxColorValue = 255), rgb(191,90,242, maxColorValue = 255),
                        rgb(255,55,95, maxColorValue = 255), rgb(172,142,104, maxColorValue = 255),
                        rgb(152,152,157, maxColorValue = 255)
                       )

# THEME: rename function and theme() arguments according to your theme design, feel free to edit this how you would like
theme_apple <- function(apple_font = FALSE){
  font_family = ifelse(apple_font,"apple","Arial") # use this line if you have a custom font
  ggplot2::theme(
    panel.grid.minor = element_blank(),
    panel.grid.major = element_blank(),
    text = element_text(color = apple_text, family = font_family),
    plot.title = element_text(size=22, color=apple_axis, face="bold", hjust=0.5),
    plot.caption = element_text(size=6),
    plot.subtitle = element_text(size=12, hjust=0.5),
    axis.title = element_text(size=10, color = apple_text),
    axis.text = element_text(size=8, color = apple_text),
    axis.ticks = element_blank(),
    axis.line = element_line(color = apple_axis, linewidth=0.5),
    strip.text = element_text(size=8, colour = apple_text, face="bold"),
    strip.background = element_rect(fill="white"),
    panel.background = element_rect(fill="white"),
    legend.key = element_rect(fill = "white")
  )
}

scale_color_apple_light <- ggplot2::scale_color_manual(values=apple_palette_light)
scale_fill_apple_light <- ggplot2::scale_fill_manual(values=apple_palette_light)
scale_color_apple_dark <- ggplot2::scale_color_manual(values=apple_palette_dark)
scale_fill_apple_dark <- ggplot2::scale_fill_manual(values=apple_palette_dark)
