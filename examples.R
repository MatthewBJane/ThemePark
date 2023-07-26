`X variable` = rnorm(50,0,1)
`Y variable` = rnorm(50,0,1)

ggplot(data=NULL, aes(x = `X variable`,y = `Y variable`)) +
  theme_gameofthrones(gameofthrones_font=TRUE) +
  geom_smooth(method='lm',color=dark_color_gameofthrones, fill = light_color_gameofthrones) +
  geom_point(color = medium_color_gameofthrones) +
  ggtitle('Game of Thrones Scatter Plot')

g <- ggplot(mpg, aes(cty))
g + geom_density(aes(fill=factor(cyl)), alpha=0.8) + 
  labs(title="Density plot", 
       subtitle="City Mileage Grouped by Number of cylinders",
       caption="Source: mpg",
       x="City Mileage",
       fill="# Cylinders") +
  theme_gameofthrones() +
  scale_color_barbie

ggplot(data=NULL, aes(x = `X variable`,y = `Y variable`)) +
  theme_avatar(avatar_font=TRUE) +
  geom_smooth(method='lm',color=dark_color_avatar, fill = light_color_avatar) +
  geom_point(color = medium_color_avatar) +
  ggtitle('Game of Thrones Scatter Plot')
