# server.R script ---------------------------------------------

library(shiny) #  carregar shiny no 2 scripts
# server é definido dentro desses parênteses
shinyServer(function(input, output) {
# Geralmente contém duas coisas e devem ser
# passada no ui.R:
# -> objetos reativos: tais como output$textDisplay
# -> Saidas definidas, tais como gráficos
  output$textDisplay <- renderText({
# renderText: Dá a saída o nome 'textDisplay'e informa
# que o elemento  é reativo na forma de texto
# As entradas são lidas na ui.R com 'input$...',
# Nessa caso, foi usado input$comment
    if (nchar(input$comment)>0) {
      paste0(
        "Você digitou '",
        input$comment,
        "'. Existe(m) ",
        nchar(input$comment),
        " caracter(es) no que foi digitado."
      )
    }else{
      paste0(
        "Nada digitado ainda :("
      )
    }
  })
})

