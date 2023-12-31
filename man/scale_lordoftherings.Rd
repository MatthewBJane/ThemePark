% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/theme_lordoftherings.R
\name{scale_fill_lordoftherings}
\alias{scale_fill_lordoftherings}
\alias{scale_color_lordoftherings}
\title{Lord of the Rings Inspired Color Scales}
\usage{
scale_fill_lordoftherings(...)

scale_color_lordoftherings(...)
}
\arguments{
\item{...}{Additional arguments to pass to \verb{ggplot2::scale_[fill/color]_gradient()}}
}
\value{
a \code{ggplot} scale object
}
\description{
Lord of the Rings Inspired Color Scales
}
\examples{
library(ggplot2)

ggplot(mpg) +
  geom_point(aes(y = class, x = hwy, color = cyl)) +
  labs(title="MPG by Vehicle Type",
       caption="Source: mpg",
       x = "City Mileage",
       color ="# Cylinders") +
  scale_color_lordoftherings()

}
\concept{lordoftherings}
