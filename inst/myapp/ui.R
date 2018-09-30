shiny::fluidPage(
  shiny::titlePanel(div("Weather forecast",style="background-color:aliceblue;text-align:center;
                        font-family:Calibri;height:35px;border-radius:6px;"
  )
  )
  , shiny::sidebarLayout(
    shiny::sidebarPanel(shiny::textInput(inputId = "cityName",label = "City Name",value = "Linkoping"))
    , shiny::mainPanel(plotly::plotlyOutput("map")
                       ,br()
                       ,plotly::plotlyOutput("forecast"))
  )
  )


