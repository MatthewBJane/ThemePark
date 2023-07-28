![theme_park_banner](https://github.com/MatthewBJane/theme_park/assets/52077481/4c2e2885-d879-46e6-b61d-b253d8382597)

# Welcome to the Theme Park
Theme Park is a soon to be package for fun ggplot themes related to popular culture (movies, TV shows, video-games, etc.). I don't have much time to expand this further so please consider submitting a theme!

## Submit a Theme
Please help grow this package by submitting your own custom ggplot theme for a movie, show, or videogame. To submit, edit the 'theme_template.R' script file and send the edited script to matthew.jane@uconn.edu or submit a pull request. I will review it and add it or respond with suggested edits. Have fun with it!

## Themes contributed

Name | Theme | Creator(s) | Source
---- | ----- | ---------- | ------
**Barbie** | `theme_barbie` | Matthew B. Jané | [theme_barbie.R](https://raw.githubusercontent.com/MatthewBJane/theme_park/main/theme_barbie.R)
**Oppenheimer** | `theme_oppenheimer` | Matthew B. Jané & Toki Liam | [theme_oppenheimer.R](https://raw.githubusercontent.com/MatthewBJane/theme_park/main/theme_oppenheimer.R)
**Starwars** | `theme_starwars` | Matthew B. Jané | [theme_starwars.R](https://raw.githubusercontent.com/MatthewBJane/theme_park/main/theme_starwars.R)
**Zelda** | `theme_zelda` | Alex Slavenko | [theme_zelda.R](https://raw.githubusercontent.com/MatthewBJane/theme_park/main/theme_zelda.R)
**Terminator** | `theme_terminator` | Alex Slavenko | [theme_terminator.R](https://raw.githubusercontent.com/MatthewBJane/theme_park/main/theme_terminator.R)
**Spiderman** | `theme_spiderman` | Velu P.K. Immonen | [theme_spiderman.R](https://raw.githubusercontent.com/MatthewBJane/theme_park/main/theme_spiderman.R)
**Avatar** | `theme_avatar` | Velu P.K. Immonen | [theme_avatar.R](https://raw.githubusercontent.com/MatthewBJane/theme_park/main/theme_avatar.R)
**Gryffindor** | `theme_gryffindor` | Begum Ozemek | [theme_hogwarts.R](https://raw.githubusercontent.com/MatthewBJane/theme_park/main/theme_hogwarts.R)
**Hufflepuff** | `theme_hufflepuff` | Begum Ozemek | [theme_hogwarts.R](https://raw.githubusercontent.com/MatthewBJane/theme_park/main/theme_hogwarts.R)
**Ravenclaw** | `theme_ravenclaw` | Begum Ozemek | [theme_hogwarts.R](https://raw.githubusercontent.com/MatthewBJane/theme_park/main/theme_hogwarts.R)
**Slytherin** | `theme_slytherin` | Begum Ozemek | [theme_hogwarts.R](https://raw.githubusercontent.com/MatthewBJane/theme_park/main/theme_hogwarts.R)
**Futurama** | `theme_futurama` | Tylor J. Harlow | [theme_futurama.R](https://raw.githubusercontent.com/MatthewBJane/theme_park/main/theme_futurama.R)
**Simpsons** | `theme_simpsons` | Tylor J. Harlow | [theme_simpsons.R](https://raw.githubusercontent.com/MatthewBJane/theme_park/main/theme_simpsons.R)
**Lord of the Rings** | `theme_lordoftherings` | Ethan Milne | [theme_lordoftherings.R](https://raw.githubusercontent.com/MatthewBJane/theme_park/main/theme_lordoftherings.R)
**Game of Thrones** | `theme_gameofthrones` | Brennan Antone | [theme_gameofthrones.R](https://raw.githubusercontent.com/MatthewBJane/theme_park/main/theme_gameofthrones.R)
**Godfather** | `theme_godfather` | Francisco Garre-Frutos | [theme_godfather.R](https://raw.githubusercontent.com/MatthewBJane/theme_park/main/theme_godfather.R)
**Finding Nemo** | `theme_nemo` | Christopher Kenny | [theme_nemo.R](https://raw.githubusercontent.com/MatthewBJane/theme_park/main/theme_nemo.R)



## Use
For use, you can run the code below after installing both the ggplot2 and showtext packages.
```
library('devtools')
theme_name = "theme_barbie" # Pick which theme you want

theme_url = paste0("https://raw.githubusercontent.com/MatthewBJane/theme_park/main/", theme_name ,".R")
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
