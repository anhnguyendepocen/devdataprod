library(shiny)
library(rCharts)

dat <- read.csv('data.csv')
source("gdpData.R")

options(RCHART_WIDTH = 500)

srcLink <- function(type) {
  switch(type,
         Malaysia = "https://en.m.wikipedia.org/wiki/Economy_of_Malaysia",
         Singapore = "https://en.m.wikipedia.org/wiki/Economy_of_Singapore",
         Indonesia = "https://en.m.wikipedia.org/wiki/Economy_of_Indonesia",
         Thailand = "https://en.m.wikipedia.org/wiki/Economy_of_Thailand",
         Philippines = "https://en.m.wikipedia.org/wiki/Economy_of_Philippines",
         Brunei = "https://en.m.wikipedia.org/wiki/Economy_of_Brunei",
         Vietnam = "https://en.m.wikipedia.org/wiki/Economy_of_Vietnam",
         Laos = "https://en.m.wikipedia.org/wiki/Economy_of_Laos",
         Myanmar = "https://en.m.wikipedia.org/wiki/Economy_of_Myanmar",
         Cambodia = "https://en.m.wikipedia.org/wiki/Economy_of_Cambodia")
}

shinyServer(function(input, output) {
        
        # Generate a chart for the ASEAN country
        output$plot <- renderChart2({
                selected <- input$country
                country <- subset(dat, country == selected & Year %in% seq(input$range[1], input$range[2], 1))
                h1 <- hPlot(
                        x = "Year", 
                        y = "GDPPerCapita", 
                        data = country, 
                        type = "line")
        })
        
        # Generate a table for the raw data
        output$table <- renderDataTable({
                dat[,-1]
        })
        
        #Render page
        output$country <- renderUI({
          tags$iframe(
            seamless="seamless",
            src=srcLink(input$country), height=550, width=800)
        })
})

