# server.R script ---------------------------------------------

library(shiny) #  carregar shiny no 2 scripts
# server é definido dentro desses parênteses
shinyServer(function(input, output) {
# Marca a função como reativa e atribui
# output$textDisplay passado no ui.R
  output$textDisplay <- renderText({
# Apartir do texto
    paste0("You said '", input$comment,
 # definido no ui.R
           "'. There are ", nchar(input$comment),
           " characters in this."
    )
  })
})

