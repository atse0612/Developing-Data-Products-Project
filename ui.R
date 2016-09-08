## Developing Data Products and Reproducible Pitch Project

# ui.R file for the Shiny App 
# This is a shiny App to choose your best car four your trip in order to have the optimal results.

library(markdown)
shinyUI(navbarPage("Pick Your Best Car For Your Trip",
                   tabPanel("Data",
                            # Sidebar
                            sidebarLayout(
                              sidebarPanel(
                                helpText("Choose Your Car Based on Your Trip Preferences:"),
                                numericInput('dis', 'Distance (in miles):', 50, min = 1, max = 1000),
                                numericInput('cost', 'Gas Price (per gallon):', 2.41, min = 2, max = 4, step=0.01),
                                numericInput('gas', 'Maximum expenditure on gas:', 50, min=1, max=1000),
                                numericInput('gears', 'Miles Per Gallon:', 5, min=1, max=30),
                                checkboxGroupInput('cyl', 'Number of cylinders:', c("Four"=4, "Six"=6, "Eight"=8), selected = c(4,6,8)),
                                sliderInput('disp', 'Displacement', min=70, max=480, value=c(70,480), step=20),
                                sliderInput('hp', 'Gross horsepower', min=50, max=340, value=c(50,340), step=20),
                                checkboxGroupInput('am', 'Transmission:', c("Automatic"=0, "Manual"=1), selected = c(0,1))
                              ),
                              mainPanel(
                                dataTableOutput('table')
                              )
                            )
                   ),
                   tabPanel("About",
                            mainPanel(
                              includeMarkdown("about.md")
                            )
                   )
))   
