library(shiny)
library(sentimentr)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("sentiment Analysis"),
  
  # Sidebar with a slider input for number of bins 
  sidebarLayout(
    sidebarPanel(
      
      
    ),
    
    # Show a plot of the generated distribution
    mainPanel(type = "tabs",
              tabPanel("Sentiments",tableOutput("sentiments")),
              tabPanel("graph",plotOutput("plot"))
              
              
    )
  )))