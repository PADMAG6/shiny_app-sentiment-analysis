library(shiny)
library(syuzhet)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
  
  output$sentiments <- renderTable({
    
    # generate bins based on input$bins from ui.R
    data    <- c('this is a very beautiful day','i am not feeling good,i hate it when it happens','the product is good but expensive at this price','i love you') 
    Sentiments = sentiment(data)
    
  })
  
  output$plot<- renderPlot({
    
    plot(sentiment(data))
  })
})

