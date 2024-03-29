% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/theme_snes.R
\name{theme_snes}
\alias{theme_snes}
\title{Super Nintendo Inspired Theme}
\usage{
theme_snes(snes_font = TRUE, ...)
}
\arguments{
\item{snes_font}{should \code{theme_snes} use custom font? Default is \code{TRUE}.}

\item{...}{additional parameters to pass to \code{ggplot2::theme()}}
}
\value{
a \code{ggplot2} \code{theme} element
}
\description{
Super Nintendo Inspired Theme
}
\examples{
library(ggplot2)

ggplot(data = data.frame(x = rnorm(50, 0, 1), y = rnorm(50,0,1)), aes(x = x, y = y)) +
  geom_smooth(method = 'lm') +
  geom_point() +
  labs(title = 'snes Scatter Plot') +
  theme_snes()

ggplot(mpg, aes(cty)) +
  geom_density(aes(fill=factor(cyl)), alpha=0.8) +
  labs(title="Density plot",
       subtitle="City Mileage Grouped by Number of cylinders",
       caption="Source: mpg",
       x="City Mileage",
       fill="# Cylinders") +
  theme_snes() +
  scale_fill_snes_d()


}
\concept{snes}
