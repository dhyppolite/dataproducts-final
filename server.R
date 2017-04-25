#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
  output$meanWeightText <- reactive({
        m <- mean(women[women$height >= input$minheight,]$weight)
        paste("Average weight for women with height >= ", input$minheight,"lbs", ":", m)
    })
    
  output$womenPlot <- renderPlot({
    
    # generate bins based on input$bins from ui.R
    
    # draw the histogram with the specified number of bins
    plot(weight ~ height, data=women,xlab="height (in)", ylab="weight (lbs)", main="Average Heights and Weights for American Women")
    model <- lm(weight ~ height, data=women)
    abline(model)
    
  })
  
}


)
