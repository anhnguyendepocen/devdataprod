library(shiny)
library(rCharts)

# Define UI 
shinyUI(fluidPage(
        titlePanel("The GDP Per Capita of ASEAN Countries from 1960 to 2020"),
        
        # Sidebar 
        sidebarLayout(
                sidebarPanel(
                        h5("Understand the GDP per capita growth since 1960 in ASEAN economies"),
                        br(),
                        radioButtons(inputId = "country", 
                                    label = "Select a country:", 
                                    choices = c("Malaysia", "Singapore", "Indonesia", "Thailand", "Philippines", "Brunei", "Vietnam", "Laos", "Myanmar", "Cambodia"), 
                                    selected = "Malaysia"), 
                        br(),
                        sliderInput("range",
                                    label = "Range of year:",
                                    min = 1960,
                                    max = 2020,
                                    value = c(1960, 2014), 
                                    sep = ""), 
                        br(),
                        helpText("GDP per capita (nominal) data are based on current USD values.",
                                 "Click on Country Economy tab to read more about the country.",
                                 "Hover on the lines or click on the GDP Data tab to obtain exact values.",
                                 "Data from 1960-2014 are extracted from", tags$a(href="http://databank.worldbank.org/data/home.aspx", "The World Bank Databank"),
                                 " and forecast data from 2015-2020 are derived from", tags$a(href="http://www.imf.org/external/pubs/ft/weo/2015/02/weodata/index.aspx", "The IMF."),
                                 "Please check the ", tags$a(href="http://rpubs.com/chankf87/ASEAN_GDP_Growth", "pitch"),
                                 "and", tags$a(href="https://github.com/chankf87/datadevprod", "source code"))
                ),
                
                # Show the plot 
                mainPanel(
                        tabsetPanel(
                                tabPanel("Plot", showOutput("plot", "highcharts")),
                                tabPanel("Country Economy", htmlOutput('country')),
                                tabPanel("GDP Data", dataTableOutput("table"))
                        )
                )
        )
))