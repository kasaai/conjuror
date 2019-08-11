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
#' @param specs A named list.
#' @param simulator The name of the simulator, which will be used as the class name for
#' @param ... Optional additional arguments
#'   the returned incantation object.
#' @export
scribe <- function(specs, simulator, ...) {
  new_incantation(specs, ..., class = simulator)
}

new_incantation <- function(specs, ..., class = character()) {
  structure(
    list(
      specs,
      ...
    ),
    class = c(class, "incantation")
  )
}
