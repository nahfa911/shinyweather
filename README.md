## shinyweather

This package contains a shiny app that can be used to see the weather
forecast of a desired city. To get the data, this package use the weatherforecat
package that is a R client for openweathermap API. You can see the details about
the weatherforecat package and about the openweathermap API here:

[weatherforecast package](https://github.com/nahfa911/weatherforecas)

[openweathermap API](https://openweathermap.org/)


### Before running this package
Download [weatherforecas package](https://github.com/nahfa911/weatherforecas)
```{r eval = FALSE}
devtools::install_github('nahfa911/weatherforecas', build_vignettes = TRUE)
```

### Installation

```{r eval = FALSE}
devtools::install_github('nahfa911/shinyweather')
```


### Running the shinyApp

```{r eval = FALSE}
runshinyweather()
```

If you don't want to download this package, you still can run this App by

```{r eval = FALSE}
library(shiny)
runGitHub("shinyweather", "nahfa911")
```
