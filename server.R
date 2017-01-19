library(shiny)

shinyServer(function(input, output) {
        
        output$text1 <- renderText({paste(input$slider, input$box1)})
        output$cost <- reactive({
                ifelse(input$slider < 5, 
                       input$slider * 2, 
                       input$slider * 2 * 0.9  
                )
        })
})


