library(tidyverse)
# packages used briefly: rvest, janitor, anytime
box_office <- rvest::read_html('https://www.boxofficemojo.com/release/rl1077904129/') |>
  rvest::html_table() |>
  pluck(1) |>
  janitor::clean_names()

barbie_box_office <- box_office |>
  mutate(
    date = date |>
      str_replace('Jul', 'July') |>
      str_replace('Aug', 'August') |>
      str_replace('Sep', 'September') |>
      str_remove_all('Labor Day'),
    date = str_c(date, ' 2023'),
    date = anytime::anydate(date),
    dow = factor(dow),
    daily = str_remove(daily, '\\$') |>
      str_remove_all(',') |>
      as.integer(),
    percent_yd = percent_yd |>
      str_remove('%') |>
      str_remove('\\+') |>
      as.double(),
    percent_lw = percent_lw |>
      str_remove('%') |>
      str_remove('\\+') |>
      as.double(),
    theaters = theaters |>
      str_remove(',') |>
      as.integer(),
    avg = avg |>
      str_remove('\\$') |>
      str_remove_all(',') |>
      as.integer(),
    to_date = to_date |>
      str_remove('\\$') |>
      str_remove_all(',') |>
      as.integer(),
    estimated = estimated |>
      str_to_upper() |>
      as.logical()
  ) |>
  rename(
    avg_per_theater = avg
  ) |>
  filter(
    date <= ymd('2023-09-09') # 50 days
  )

usethis::use_data(barbie_box_office, overwrite = TRUE, compress = 'xz')
