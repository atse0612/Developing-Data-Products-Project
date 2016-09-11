library(shiny)

shinyUI(fluidPage(
  titlePanel("Stock Visualizer"),
  
  sidebarLayout(
    sidebarPanel(
      helpText("Type in a stock to examine. If you don't know the company's stock symbol, go to any finance website to look it up.
        Information will be collected from Yahoo Finance. 
        It allows the user to play around with the Log function on Y. 
        The inflation option in the application allows the user to identify the trends 
        in the past to know what is the price per share in today's money by 
        looking from the past data."),
    
      textInput("symb", "Symbol", "GOOG"),
    
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