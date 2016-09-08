library(shiny)

shinyUI(fluidPage(
  titlePanel("Stock Visualizer"),
  
  sidebarLayout(
    sidebarPanel(
      helpText("Type in a stock to examine. 
        Information will be collected from Yahoo Finance."),
    
      textInput("symb", "Symbol", "SPY"),
    
      dateRangeInput("dates", 
        "Date range",
        start = "2007-01-01", 
        end = as.character(Sys.Date())),
      
      br(),
      br(),
      
      checkboxInput("log", "Plot y Axis on Log Scale", 
        value = FALSE),
      
      checkboxInput("adjust", 
        "Adjust Prices for Inflation", value = FALSE)
    ),
    
    mainPanel(plotOutput("plot"))
  )
))