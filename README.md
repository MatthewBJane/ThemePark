![theme_park_banner](https://github.com/MatthewBJane/theme_park/assets/52077481/6a02f463-9e79-4080-aab8-6c6d591aa958)

# Theme Park
Theme Park is a soon to be package for fun ggplot themes related to popular culture (movies, TV shows, video-games, etc.). I don't have much time to expand this further so please consider submitting a theme!

## Submit a Theme
Please help grow this package by submitting your own custom ggplot theme for a movie, show, or videogame. To submit, edit the 'theme_template.R' script file and send the edited script to matthew.jane@uconn.edu. I will review it and add it or respond with suggested edits. Have fun with it!

## Contributors
- **Matthew B Jané** `theme_barbie`, `theme_oppenheimer`
- **Toki Liam** `theme_oppenheimer`
- **Alex Slavenko** `theme_zelda`


## Use
```
library('devtools')
theme_name = "theme_barbie" # Pick which theme you want

paste("https://raw.githubusercontent.com/MatthewBJane/theme_park/main/", theme_name ,".R")
source_url("https://raw.githubusercontent.com/MatthewBJane/theme_park/main/theme_barbie.R")
```

## Example (theme_barbie)

```
`X variable` = rnorm(50,0,1)
`Y variable` = rnorm(50,0,1)

ggplot(data=NULL, aes(x = `X variable`,y = `Y variable`)) +
       theme_barbie(barbie_font=TRUE) +
       geom_smooth(method='lm',color=dark_color_barbie, fill = light_color_barbie) +
       geom_point(color = medium_color_barbie) +
       ggtitle('Barbie Scatter Plot')
```
<img width="534" alt="image" src="https://github.com/MatthewBJane/theme_barbie/assets/52077481/cc45bdd6-d1f6-44a9-b9f3-cb52736f4188">

## Citation

### BibTeX:
```
@software{JaneBarbie2023,
  author = {Jané, Matthew B},
  month = {6},
  title = {barbie_theme: ggplot theme for the Barbie movie},
  url = {https://github.com/MatthewBJane/theme_barbie},
  version = {0.0.1},
  year = {2023}
}
```
### APA:
Jané, M.B. (2023). theme_park: popular culture ggplot themes (Version 0.0.1) [Source Code]. https://github.com/MatthewBJane/theme_park
