
# 1 - ui.R Script ---------------------------------------------------------
#Exemplo adaptado de Beeley (2018)

library(shiny) # carregar shiny no 2 scripts


# Padronizar layout vanilla UI:
# -> controles à esquerda;
# -> output à direita;

# -> Todos os elementos da IU são definidosdentro aqui
shinyUI(pageWithSidebar(
  #Título da interface
  headerPanel("Exemplo 1 - Baseado em 'Minimal example' de Beeley (2018)"),
  # Todos os controles de UI estão aqui
  sidebarPanel(
    # Nome da variável - será informado no server.R
    # textInput () é um widget reativa que coleta texto
    # digitado pelo usuário com uma caixa de texto, os
    # principais argumentos são:
    # -> inputId: nomeia a variável para ser referenciada
    #             no server.R.;
    textInput(
      inputId = "comment",
      # ->label: fornece um rótulo para  cada elemento reativo
      label = "Digite algo?",
      # value: fornece o valor inicial para o widget;
      value = ""
    ),
    sliderInput(
      inputId = "ValorSlider",
      label = paste("Definir valores", "\n do gráfico"),
      min = 0,
      max = 1000,
      value = 500
    ),
    textInput(
      inputId = "titulo",
      # ->label: fornece um rótulo para  cada elemento reativo
      label = "Título do gráfico:",
      # value: fornece o valor inicial para o widget;
      value = ""
    )

  ),
  # Todos os outputs vão aqui
  mainPanel(
    # Titulo com HTML. Existem várias dessas funções
    # projetadas para gerar HTML direto na página;
    # Nesse caso foi usado h3 que assim como h1, h2,...
    # (Header 1, ou Cabeçalho 2, etc.), são os titulos e
    # subtítulos de uma página. Digite ?p para obter a
    # lista completa de Builder Functions em HTML.
    h2("Isso foi o que você digitou"),
    # Nome dos outputs -> definido no server.R
    textOutput("textDisplay"),
    textOutput("textTitle"),
    h3("Histograma"),
    plotOutput(outputId = "distPlot")
  )
))

