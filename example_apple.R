# Example code for theme_apple
library(ggplot2)
source("theme_apple.R")

ggplot(mpg, aes(x=displ, y=hwy, color=class, group=class)) + 
  geom_point(alpha=0.5)+
  theme_apple(apple_font=TRUE)+
  labs(title="Highway Mileage vs. Engine Displacement",
       x="Engine Displacement (L)",
       y="Highway Mileage (mpg)")+
  theme(aspect.ratio=1/2)+
  scale_color_apple_light+scale_fill_apple_light
