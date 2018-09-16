#' Add a contour layer to the deckgl widget
#'
#' \code{ContourLayer} renders contour lines for a given threshold and cell size.
#' Internally it implements Marching Squares algorithm to generate contour line segments
#' and feeds them into \code{LineLayer} to render lines.
#'
#' @inheritParams add_layer
#'
#' @seealso \url{https://deck.gl/#/documentation/deckgl-api-reference/layers/contour-layer}
#'
#' @export
add_contour_layer <- function(deckgl, id = "contour-layer", data = NULL, properties = list(), ...) {
  add_layer(deckgl, "ContourLayer", id, data, properties, ...)
}

#' Contour definition
#'
#' @param threshold threshold value to be used in contour generation
#' @param color RGB color array to be used to render contour lines
#' @param strokeWidth width of the contour line in pixels
#'
#' @export
contour_definition <- function(threshold = 1, color = c(255, 255, 255), strokeWidth = 1) {
  list(
    threshold = threshold,
    color = color,
    strokeWidth = strokeWidth
  )
}