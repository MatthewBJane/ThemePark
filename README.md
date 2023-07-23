## Barbie theme for ggplot2

<img width="534" alt="image" src="https://github.com/MatthewBJane/theme_barbie/assets/52077481/f4253de6-912a-4b1b-b84e-afe233d70c97">


## Use
```
library('devtools')
source_url("https://raw.githubusercontent.com/MatthewBJane/theme_barbie/main/theme_barbie.R")
```

# Example

```
`X variable` = rnorm(50,0,1)
`Y variable` = rnorm(50,0,1)

ggplot(data=NULL, aes(x = `x variable`,y = `y variable`)) +
       theme_barbie(barbie_font=TRUE) +
       geom_smooth(method='lm',color=dark_color_barbie, fill = light_color_barbie) +
       geom_point(color = medium_color_barbie) +
       ggtitle('Barbie Scatter Plot')
```
