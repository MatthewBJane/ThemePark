#' Finding Nemo Inspired Table Theme
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
#'   gt_theme_nemo()
gt_theme_nemo <- function(data, ...) {

  data |>
    # first update the font
    gt::opt_table_font(font = gt::google_font("Bowlby One SC")) |>
    # set background colors
    gt::opt_row_striping() |>
    # title
    gt::tab_style(
      style = gt::cell_text(color = nemo_theme_colors['background']),
      locations = list(gt::cells_title())
    ) |>
    gt::tab_style(
      style = gt::cell_fill(color = nemo_theme_colors['panel']),
      locations = list(gt::cells_title(), gt::cells_row_groups())
    ) |>
    # column names
    gt::tab_style(
      style = gt::cell_text(color = nemo_theme_colors['text']),
      locations = list(gt::cells_column_labels(), gt::cells_column_spanners())
    ) |>
    gt::tab_style(
      style = gt::cell_fill(color = nemo_theme_colors['fill']),
      locations = list(
        gt::cells_column_labels(), gt::cells_column_spanners(),
        gt::cells_stub(), gt::cells_stub_grand_summary(),
        gt::cells_grand_summary()
      )
    ) |>
    gt::tab_style(
      style = gt::cell_text(color = '#7C442B'),
      locations = list(
        gt::cells_stubhead(), gt::cells_source_notes(),
        gt::cells_footnotes()
      )
    ) |>
    gt::tab_style(
      style = gt::cell_fill(color = '#C2E5E7'),
      locations = list(
        gt::cells_stubhead(),
        gt::cells_source_notes(),
        gt::cells_footnotes()
      )
    ) |>
    gt::tab_style(
      style = gt::cell_borders(sides = 'right', color = 'black'),
      locations = gt::cells_stub()
    ) |>
    # default border styling
    gt::tab_style(
      style = gt::cell_borders(sides = c('top', 'bottom'), color = 'black'),
      location = gt_cells_everywhere()
    ) |>
    gt::opt_table_outline(color = 'black', width = gt::px(4)) |>
    # rest of borders
    gt::tab_options(
      # top colors, generally black
      table.border.top.color = 'black',
      table.border.left.color = 'black',
      table.border.right.color = 'black',
      column_labels.border.top.color = 'black',
      row_group.border.top.color = 'black',
      summary_row.border.color = 'black',
      # bottom colors, generally black
      table.border.bottom.color = 'black',
      heading.border.bottom.color = 'black',
      column_labels.border.bottom.color = 'black',
      row_group.border.bottom.color = 'black',
      table_body.border.bottom.color = 'black',
      # footnotes.border.bottom.color = unname(barbie_theme_colors['medium']),
      source_notes.border.bottom.color = 'black',
      # # backgrounds
      # source_notes.background.color = unname(barbie_theme_colors['medium']),
      # footnotes.background.color = unname(barbie_theme_colors['medium']),
      row.striping.background_color = unname(nemo_theme_colors['medium']),
      # any other options passed by users
      ...
    )

}
