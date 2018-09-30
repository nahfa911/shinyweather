MAPBOX_TOKEN <- Sys.setenv('MAPBOX_TOKEN'='pk.eyJ1IjoibmFoZmE5MTEiLCJhIjoiY2ptZXp4ZmlqMGJvYzN3bnZxcWwzM3JsYiJ9.IgE2DjVkNUjg5tdl4oCX1A')
function(input,output){
  output$map <- plotly::renderPlotly({
    cityob <- weatherforecast::cityweather$new(input$cityName)
    data <- cbind(as.data.frame(cityob$content$city),cityob$content$list[1,])
    plotly::add_markers(hoverinfo = 'text'
                ,text = ~paste0(name,'<br>',country,'<br>','long: ',coord.lon,'<br>'
                                ,'lat: ',coord.lat
                                ,'<br>','temp: ',data$main$temp
                                ,'<br>','humidity: ',data$main$humidity),color = I("red3")
                ,p = plotly::plot_mapbox(x= ~coord.lon,y =~coord.lat,data = data
                )
    )
  })
  output$forecast <- plotly::renderPlotly({
    cityob <- weatherforecast::cityweather$new(input$cityName)
    data <- cityob$content$list
    plotly::layout(showlegend = FALSE, xaxis = list(
      title = 'date and time'
    ), yaxis = list(title='tempreture'),  plotly::add_lines(p = plotly::add_markers(
      hoverinfo = 'text', text = ~paste(main$temp,'°C')
      , p = plotly::plot_ly(x = ~dt_txt
                    ,y = ~main$temp
                    ,data = data))))
  })


}


