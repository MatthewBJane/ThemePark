## Ekaterina Kustova
## theme_grand_budapest, theme_asteroid_city, theme_french_dispatch, theme_moonrise_kingdom
## 28.07.2023

## grand budapest hotel


font_add_google(name = "Limelight", family = "grand_budapest") 
showtext_auto()

text_color_grand_budapest   <- '#42292F'
panel_color_grand_budapest   <- '#FFF5F1'
border_color_grand_budapest  <- '#B6665A'
lighter_color_grand_budapest <- '#F5E4D0'
light_color_grand_budapest   <- '#EFB4BC'
medium_color_grand_budapest  <- '#638BA6'
dark_color_grand_budapest    <- '#A46B71'



theme_grand_budapest <- function(grand_budapest_font = TRUE){
  font_family = ifelse(grand_budapest_font,"grand_budapest", "Arial") 
  
  ggplot2::theme(
        panel.grid.minor = element_blank(),
        panel.grid.major = element_blank(),
        text = element_text(color = text_color_grand_budapest, family = font_family),
        title = element_text(size=20),
        panel.background = element_rect(fill = panel_color_grand_budapest),
        panel.border = element_rect(fill = NA, color = border_color_grand_budapest,linewidth=1.2),
        axis.title = element_text(size=17),
        axis.text = element_text(size=13,color = text_color_grand_budapest),
        axis.ticks = element_line(color = border_color_grand_budapest,linewidth=1),
        legend.background = element_rect(fill = panel_color_grand_budapest, color = NA),
        strip.background = element_rect(fill = lighter_color_grand_budapest, colour = border_color_grand_budapest),
        strip.text = element_text(colour = text_color_grand_budapest)
       )
}


scale_fill_grand_budapest <- ggplot2::scale_fill_gradient(low = lighter_color_grand_budapest, high = dark_color_grand_budapest)
scale_color_grand_budapest <- ggplot2::scale_color_gradient(low = lighter_color_grand_budapest, high = dark_color_grand_budapest)



## asteroid city


font_add_google(name = "Bungee Shade", family = "asteroid_city") 
showtext_auto()

text_color_asteroid_city   <- '#F28A2E'
panel_color_asteroid_city   <- '#FFE9C7'
border_color_asteroid_city  <- '#A60303'
lighter_color_asteroid_city <- '#90D3B2'
light_color_asteroid_city   <- '#D9B471'
medium_color_asteroid_city  <- '#03A696'
dark_color_asteroid_city    <- '#3A403E'



theme_asteroid_city <- function(asteroid_city_font = TRUE){
  font_family = ifelse(asteroid_city_font,"asteroid_city", "Arial") 
  
  ggplot2::theme(
        panel.grid.minor = element_blank(),
        panel.grid.major = element_blank(),
        text = element_text(color = text_color_asteroid_city, family = font_family),
        title = element_text(size=20),
        panel.background = element_rect(fill = panel_color_asteroid_city),
        panel.border = element_rect(fill = NA, color = border_color_asteroid_city,linewidth=1.2),
        axis.title = element_text(size=17),
        axis.text = element_text(size=13,color = text_color_asteroid_city),
        axis.ticks = element_line(color = border_color_asteroid_city,linewidth=1),
        legend.background = element_rect(fill = panel_color_asteroid_city, color = NA),
        strip.background = element_rect(fill = lighter_color_asteroid_city, colour = border_color_asteroid_city),
        strip.text = element_text(colour = text_color_asteroid_city)
       )
}


scale_fill_asteroid_city <- ggplot2::scale_fill_gradient(low = lighter_color_asteroid_city, high = dark_color_asteroid_city)
scale_color_asteroid_city <- ggplot2::scale_color_gradient(low = lighter_color_asteroid_city, high = dark_color_asteroid_city)



## french dispatch


font_add_google(name = "Montserrat Subrayada", family = "french_dispatch") 
showtext_auto()

text_color_french_dispatch   <- '#1F1F1D'
panel_color_french_dispatch   <- '#F7EEDF'
border_color_french_dispatch  <- '#F24535'
lighter_color_french_dispatch <- '#8FBFBF'
light_color_french_dispatch   <- '#9A9A9A'
medium_color_french_dispatch  <- '#A68F4B'
dark_color_french_dispatch    <- '#F28D35'



theme_french_dispatch <- function(french_dispatch_font = FALSE){
  font_family = ifelse(french_dispatch_font,"french_dispatch","Arial") 
  
  ggplot2::theme(
        panel.grid.minor = element_blank(),
        panel.grid.major = element_blank(),
        text = element_text(color = text_color_french_dispatch, family = font_family),
        title = element_text(size=20),
        panel.background = element_rect(fill = panel_color_french_dispatch),
        panel.border = element_rect(fill = NA, color = border_color_french_dispatch,linewidth=1.2),
        axis.title = element_text(size=17),
        axis.text = element_text(size=13,color = text_color_french_dispatch),
        axis.ticks = element_line(color = border_color_french_dispatch,linewidth=1),
        legend.background = element_rect(fill = panel_color_french_dispatch, color = NA),
        strip.background = element_rect(fill = lighter_color_french_dispatch, colour = border_color_french_dispatch),
        strip.text = element_text(colour = text_color_french_dispatch)
       )
}


scale_fill_french_dispatch <- ggplot2::scale_fill_gradient(low = lighter_color_french_dispatch, high = dark_color_french_dispatch)
scale_color_french_dispatch <- ggplot2::scale_color_gradient(low = lighter_color_french_dispatch, high = dark_color_french_dispatch)



## moonrise kingdom


font_add_google(name = "Lobster", family = "moonrise_kingdom") 
showtext_auto()

text_color_moonrise_kingdom   <- '#C76734'
panel_color_moonrise_kingdom   <- '#F3EDD2'
border_color_moonrise_kingdom  <- '#F2D649'
lighter_color_moonrise_kingdom <- '#B8DEE2'
light_color_moonrise_kingdom   <- '#C9CD9B'
medium_color_moonrise_kingdom  <- '#F25D27'
dark_color_moonrise_kingdom    <- '#6C6548'



theme_moonrise_kingdom <- function(moonrise_kingdom_font = FALSE){
  font_family = ifelse(moonrise_kingdom_font,"moonrise_kingdom","Arial") 
  
  ggplot2::theme(
        panel.grid.minor = element_blank(),
        panel.grid.major = element_blank(),
        text = element_text(color = text_color_moonrise_kingdom, family = font_family),
        title = element_text(size=20),
        panel.background = element_rect(fill = panel_color_moonrise_kingdom),
        panel.border = element_rect(fill = NA, color = border_color_moonrise_kingdom,linewidth=1.2),
        axis.title = element_text(size=17),
        axis.text = element_text(size=13,color = text_color_moonrise_kingdom),
        axis.ticks = element_line(color = border_color_moonrise_kingdom,linewidth=1),
        legend.background = element_rect(fill = panel_color_moonrise_kingdom, color = NA),
        strip.background = element_rect(fill = lighter_color_moonrise_kingdom, colour = border_color_moonrise_kingdom),
        strip.text = element_text(colour = text_color_moonrise_kingdom)
       )
}


scale_fill_moonrise_kingdom <- ggplot2::scale_fill_gradient(low = lighter_color_moonrise_kingdom, high = dark_color_moonrise_kingdom)
scale_color_moonrise_kingdom <- ggplot2::scale_color_gradient(low = lighter_color_moonrise_kingdom, high = dark_color_moonrise_kingdom)



