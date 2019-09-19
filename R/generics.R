#' Simulate Data Using Provided Specs
#'
#' @param charm An `charm` object.
#' @param ... Optional additional arguments.
#' @export
conjure <- function(charm, ...) {
  UseMethod("conjure")
}

#' Create a Specification for Simulation
#'
#' @param simulator The name of the simulator, which will be used as the class name for
#'     the returned charm object.
#' @param ... Simulator specifications.
#' @export
scribe <- function(..., simulator) {
  new_charm(..., class = simulator)
}

new_charm <- function(..., class = character()) {
  structure(
    list(
      ...
    ),
    class = c(class, "charm")
  )
}
