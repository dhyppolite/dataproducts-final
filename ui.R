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
  titlePanel("Women Height and Weight Data"),
  
  # Sidebar with a slider input for number of bins 
  sidebarLayout(
    sidebarPanel(
       helpText("Directions: Use the slider on the left to recalculate the average weights on the right. Repository: https://github.com/dhyppolite/dataproducts-final"),
       
       sliderInput("minheight",
                   "Min Height:",
                   min = 58,
                   max = 72,
                   value = 58)
       
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
       plotOutput("womenPlot"),
       textOutput("meanWeightText")
    )
    
  )
))
