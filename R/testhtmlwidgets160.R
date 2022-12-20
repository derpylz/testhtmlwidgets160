#' Title
#'
#' Test sizing policy changes in htmlwidgets version 1.6.0
#'
#' @import htmlwidgets
#'
#' @export
testhtmlwidgets160 <- function(message, width = NULL, height = NULL, elementId = NULL) {

  # forward options using x
  x = list(
    message = message
  )

  # create widget
  htmlwidgets::createWidget(
    name = 'testhtmlwidgets160',
    x,
    width = width,
    height = height,
    package = 'testhtmlwidgets160',
    elementId = elementId
  )
}

#' Shiny bindings for testhtmlwidgets160
#'
#' Output and render functions for using testhtmlwidgets160 within Shiny
#' applications and interactive Rmd documents.
#'
#' @param outputId output variable to read from
#' @param width,height Must be a valid CSS unit (like \code{'100\%'},
#'   \code{'400px'}, \code{'auto'}) or a number, which will be coerced to a
#'   string and have \code{'px'} appended.
#' @param expr An expression that generates a testhtmlwidgets160
#' @param env The environment in which to evaluate \code{expr}.
#' @param quoted Is \code{expr} a quoted expression (with \code{quote()})? This
#'   is useful if you want to save an expression in a variable.
#'
#' @name testhtmlwidgets160-shiny
#'
#' @export
testhtmlwidgets160Output <- function(outputId, width = '100%', height = '400px'){
  htmlwidgets::shinyWidgetOutput(outputId, 'testhtmlwidgets160', width, height, package = 'testhtmlwidgets160')
}

#' @rdname testhtmlwidgets160-shiny
#' @export
renderTesthtmlwidgets160 <- function(expr, env = parent.frame(), quoted = FALSE) {
  if (!quoted) { expr <- substitute(expr) } # force quoted
  htmlwidgets::shinyRenderWidget(expr, testhtmlwidgets160Output, env, quoted = TRUE)
}
