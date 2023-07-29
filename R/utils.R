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
initialize_font <- function(name, family, ...) {
  if (missing(name)) stop('`name` must be specified.')
  if (missing(family)) family <- name
  curr_families <- sysfonts::font_families()
  if (!family %in% curr_families) {
    sysfonts::font_add_google(name = name, family = family, ...)
  } else {
    invisible(curr_families)
  }
}
