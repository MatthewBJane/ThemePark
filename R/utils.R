# repeat discrete colors up to n times for a given palette pal
# removes names from pal if they have user-helpful names, but dev-annoying names
rot_pal <- function(pal) {
  pal <- unname(pal)
  function(n) {
    if (n <= length(pal)) {
      pal[seq_len(n)]
    } else {
      rep(pal, ceiling(n / length(pal)))[seq_len(n)]
    }
  }
}

#' @inheritParams sysfonts::font_add_google
#' @param ... additional arguments to pass to `sysfonts::font_add_google`
#' we don't want an R documentation file in `man/` for this, as it's internal
#' @noRd
initialize_font <- function(name, family = name, local=NULL, ...) {
  if (missing(name)) stop('`name` must be specified.')
  curr_families <- sysfonts::font_families()
  if (!family %in% curr_families) {
    if (is.null(local))  {
      sysfonts::font_add_google(name = name, family = family, ...)
    }  else  {
      sysfonts::font_add(family = family, paste0(path.package("ThemePark"), "/fonts/", local))
    }
  } else {
    invisible(curr_families)
  }
}

#' (Internal) Add a new theme to `theme_park`
#'
#' @param theme_name the theme name, the XXXX part of `theme_XXXX`
#' @param inspiration_name the name of the inspiring movie, show, or other pop culture
#' reference, such as "Barbie" or "Finding Nemo"
#' @param your_name Your name as a string
#' @param file_name the file name to use, default is `'theme_{theme_name}.R`
#'
#' @return path to new file, invisibly
#' @noRd
#'
#' @examples
#' new_theme_park_theme('thor', 'Thor', 'A. N. Author')
new_theme_park_theme <- function(theme_name, inspiration_name, your_name,
                                    file_name = paste0('theme_', theme_name, '.R')) {
  txt <- readLines(con = system.file('theme_template.R', package = 'ThemePark'))
  txt <- gsub(x = txt, pattern = 'XXXX Inspired', replacement = paste0(inspiration_name, ' Inspired'))
  txt <- gsub(x = txt, pattern = 'XXXX', replacement = theme_name)
  txt <- gsub(x = txt, pattern = 'YOUR NAME', replacement = your_name)
  txt <- gsub(x = txt, pattern = 'Date Created', replacement = Sys.Date())
  writeLines(txt, con = paste0('R/', file_name))
  invisible(paste0('R/', file_name))

}

#' Index of themes in ThemePark
#'
#' @format data.frame of themes with creator
#' @export
#'
#' @examples
#' themepark_themes
#'
themepark_themes <- as.data.frame(t(data.frame(
	c("barbie", "Matthew B. Jan\u00E9"),
	c("oppenheimer", "Matthew B. Jan\u00E9 & Toki Liam"),
	c("starwars", "Matthew B. Jan\u00E9"),
	c("zelda", "Alex Slavenko"),
	c("terminator", "Alex Slavenko"),
	c("spiderman", "Velu P.K. Immonen"),
	c("avatar", "Velu P.K. Immonen"),
	c("gryffindor", "Begum Ozemek"),
	c("hufflepuff", "Begum Ozemek"),
	c("ravenclaw", "Begum Ozemek"),
	c("slytherin", "Begum Ozemek"),
	c("futurama", "Tylor J. Harlow"),
	c("simpsons", "Tylor J. Harlow"),
	c("lordoftherings", "Ethan Milne"),
	c("gameofthrones", "Brennan Antone"),
	c("godfather", "Francisco Garre-Frutos"),
	c("nemo", "Christopher T. Kenny"),
	c("friends", "Alexis van STRAATEN"),
	c("alien", "Luke Pilling"),
	c("grand_budapest","Katya Kustova"),
	c("asteroid_city","Katya Kustova"),
	c("french_dispatch","Katya Kustova"),
	c("moonrise_kingdom","Katya Kustova"),
	c("elf", "Christopher T. Kenny")
)))
colnames(themepark_themes) = c("theme","creator")
rownames(themepark_themes) = 1:nrow(themepark_themes)
