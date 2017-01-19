library(shiny)

shinyUI(fluidPage(                               
        titlePanel("The 2$ Webshop"),          
        sidebarLayout(                            
                sidebarPanel(
                        h4("Please place your order here:"),
                        br(),
                        textInput("box1", "Enter item name", value = "e.g. cheese"),
                        br(),
                        h4("Right Now - 10% discount if you order 5 or more of the same item!",
                           align = "center"),
                        br(),
                        sliderInput("slider", "Choose quantity", 0, 25, 0),
                        submitButton("SUBMIT")
                ),
                mainPanel(
                        h4("Welcome!"),
                        br(),
                        h4("Please make your order in the panel to the 
                        left:"),
                        h4("1. Type the name of the item you wish to purchase (we have everything!)"), 
                        em("Note that all items come at a cost of 2 US$ per piece!"),
                        br(),
                        h4("2. Add the wanted quantity using the slider just below"),
                        h4("3. Press SUBMIT"),
                        br(),
                        h4("Order summary:"),
                        textOutput("text1"),
                        br(),
                        h4("Total cost (in US$):"),
                        textOutput("cost")
                        )     
                )
        )
)

