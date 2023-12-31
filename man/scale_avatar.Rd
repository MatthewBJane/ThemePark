% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/theme_avatar.R
\name{scale_fill_avatar}
\alias{scale_fill_avatar}
\alias{scale_color_avatar}
\title{Avatar Inspired Color Scales}
\usage{
scale_fill_avatar(...)

scale_color_avatar(...)
}
\arguments{
\item{...}{Additional arguments to pass to \verb{ggplot2::scale_[fill/color]_gradient()}}
}
\value{
a \code{ggplot} scale object
}
\description{
Avatar Inspired Color Scales
}
\examples{
library(ggplot2)

ggplot(mpg) +
  geom_point(aes(y = class, x = hwy, color = cyl)) +
  labs(title="MPG by Vehicle Type",
       caption="Source: mpg",
       x = "City Mileage",
       color ="# Cylinders") +
  scale_color_avatar()

}
\concept{avatar}
