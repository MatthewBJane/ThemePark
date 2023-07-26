![theme_park_banner](https://github.com/MatthewBJane/theme_park/assets/52077481/4c2e2885-d879-46e6-b61d-b253d8382597)

# Welcome to the Theme Park
Theme Park is a soon to be package for fun ggplot themes related to popular culture (movies, TV shows, video-games, etc.). I don't have much time to expand this further so please consider submitting a theme!

## Submit a Theme
Please help grow this package by submitting your own custom ggplot theme for a movie, show, or videogame. To submit, edit the 'theme_template.R' script file and send the edited script to matthew.jane@uconn.edu or submit a pull request. I will review it and add it or respond with suggested edits. Have fun with it!

## Contributors
- **Matthew B. Jané** `theme_barbie`, `theme_oppenheimer`, `theme_starwars`
- **Toki Liam** `theme_oppenheimer`
- **Alex Slavenko** `theme_zelda`, `theme_terminator`
- **Velu P.K. Immonen** `theme_spiderman`, `theme_avatar`
- **Begum Ozemek** `theme_slytherin`, `theme_hufflepuff`, `theme_ravenclaw`, `theme_gryffindor`
- **Tylor J. Harlow** `theme_futurama`, `theme_simpsons`
- **Ethan Milne** `theme_lordoftherings`


## Use
```
library('devtools')
theme_name = "theme_barbie" # Pick which theme you want

theme_url = paste("https://raw.githubusercontent.com/MatthewBJane/theme_park/main/", theme_name ,".R")
source_url(theme_url)
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
  title = {theme_park: popular culture ggplot themes},
  url = {https://github.com/MatthewBJane/theme_park},
  version = {1.0.0},
  year = {2023}
}
```
### APA:
Jané, M.B. (2023). theme_park: popular culture ggplot themes (Version 0.0.1) [Source Code]. https://github.com/MatthewBJane/theme_park
