#' Barbie Inspired Table Theme
#'
#' @param data a table of class `gt_tbl`
#' @param ... additional arguments to pass to `gt::tab_options()`
#'
#' @return a `gt_tbl`
#' @export
#'
#' @examples
#' gt::exibble |>
#'   gt::gt() |>
#'   gt_theme_barbie()
gt_theme_barbie <- function(data, ...) {

  # if (!requireNamespace('scales', quietly = TRUE)) {
  #   stop('This function requires the `scales` R package.')
  # }

  data |>
    # first update the font
    gt::opt_table_font(font = gt::google_font("Sansita Swashed")) |>
    # set background colors
    gt::tab_style(
      style = gt::cell_fill(color = barbie_theme_colors["light"]),
      locations = list(gt::cells_body())
    ) |>
    gt::tab_style(
      style = gt::cell_fill(color = barbie_theme_colors["dark"]),
      locations = list(
        gt::cells_column_labels(),
        gt::cells_column_spanners()
      )
    ) |>
    gt::tab_style(
      style = gt::cell_fill(color = barbie_theme_colors["lighter"]),
      locations = list(gt::cells_row_groups())
    ) |>
    gt::tab_style(
      style = gt::cell_text(color = '#FC419A'),
      locations = gt::cells_title()
    ) |>
    # default border styling
    gt::tab_style(
      style = gt::cell_borders(sides = c('top', 'bottom'), color = 'black'),
      location = gt_cells_everywhere()
    ) |>
    # set text colors
    gt::tab_style(
      style = gt::cell_text(color = 'white'),
      locations = list(
        gt::cells_column_labels(),
        gt::cells_column_spanners()
      )
    ) |>
    # rest of borders
    gt::tab_options(
      # top colors, generally black
      table.border.top.color = 'black',
      column_labels.border.top.color = 'black',
      row_group.border.top.color = 'black',
      # bottom colors, generally black
      table.border.bottom.color = 'black',
      heading.border.bottom.color = 'black',
      column_labels.border.bottom.color = 'black',
      row_group.border.bottom.color = 'black',
      table_body.border.bottom.color = 'black',
      # make this pink so that sourcenotes and footnotes blend
      footnotes.border.bottom.color = unname(barbie_theme_colors['medium']),
      source_notes.border.bottom.color = 'black',
      # backgrounds
      source_notes.background.color = unname(barbie_theme_colors['medium']),
      footnotes.background.color = unname(barbie_theme_colors['medium']),
      # any other options passed by users
      ...
    )
}
