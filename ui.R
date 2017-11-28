#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Celsius to Fahrenheit Calculator"),
  
  # Sidebar with a slider input for number of bins 
  sidebarLayout(
    sidebarPanel(
        h3("Value in Celsius"),
       sliderInput("celsiusValue",
                   "Celsius:",
                   min = -200,
                   max = 200,
                   value = 25)
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
        h3("Value in Fahrenheit:"),
       textOutput("fahrenheitValue")
    )
  )
))
