#' runshinyweather
#'
#' This function runs a shiny app that can be used to see the weather
#' forecast of a desired city.
#'
#' @export
runshinyweather <- function(){
  appDir <- system.file("myapp", package = "shinyweather")
  if (appDir == "") {
    stop("Could not find myapp. Try re-installing `shinyweather`.", call. = FALSE)
  }

  shiny::runApp(appDir, display.mode = "normal")
}

#' @importFrom plotly renderPlotly
#' @importFrom weatherforecast cityweather
#' @importFrom plotly plot_mapbox
#' @importFrom plotly add_markers
#' @importFrom plotly renderPlotly
#' @importFrom plotly plot_ly
#' @importFrom plotly add_lines
#' @importFrom plotly layout
#' @importFrom shiny fluidPage
#' @importFrom shiny titlePanel
#' @importFrom shiny sidebarLayout
#' @importFrom shiny sidebarPanel
#' @importFrom shiny mainPanel
#' @importFrom plotly plotlyOutput
#' @importFrom shiny textInput
NULL

