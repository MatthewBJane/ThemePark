#' Barbie Box Office Data
#'
#' This data contains box office data for the Barbie movie, from its first 50
#' days (July 21, 2023 to September 8, 2023).
#'
#' @name barbie_box_office
#' @usage data("barbie_box_office")
#' @concept data
#'
#' @source Box Office Mojo from <https://www.boxofficemojo.com/release/rl1077904129/>
#'
#' @format a `tibble` with 50 rows and 11 columns
#' \describe{
#' \item{\code{date}}{date. Box office date.}
#' \item{\code{dow}}{factor. Day of the week.}
#' \item{\code{rank}}{integer. Box office rank.}
#' \item{\code{daily}}{integer. Daily gross in USD.}
#' \item{\code{percent_yd}}{numeric. Gross change per day as a percent.}
#' \item{\code{percent_lw}}{numeric. Gross change per week as a percent.}
#' \item{\code{theaters}}{integer. Number of theatres.}
#' \item{\code{avg_per_theater}}{integer. Per theater average gross.}
#' \item{\code{to_date}}{integer. Gross to date.}
#' \item{\code{day}}{integer. Day of showing, indexed from 1.}
#' \item{\code{estimated}}{logical. Flag for if the data is estimated.}
#' }
#'
#' @examples
#' data(barbie_box_office)
#' barbie_box_office[, 1:6]
NULL
