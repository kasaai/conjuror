#' Simulate Data Using Provided Specs
#'
#' @param incantation An `incantation` object.
#' @param ... Optional additional arguments.
#' @export
conjure <- function(incantation, ...) {
  UseMethod("conjure")
}

#' Create a Specification for Simulation
#'
#' @param simulator The name of the simulator, which will be used as the class name for
#'     the returned incantation object.
#' @param ... Simulator specifications.
#' @export
scribe <- function(..., simulator) {
  new_incantation(..., class = simulator)
}

new_incantation <- function(..., class = character()) {
  structure(
    list(
      ...
    ),
    class = c(class, "incantation")
  )
}
