# Artigo 1 -  Introdução ao Shiny -----------------------------------------
# 1 - Instalação:
# Como o pacote já vem no Rstudio basta usar library() ou instalar o pacote
library(shiny)

# 2 - Exemplos:
# Visualizar todos os exemplos:
runExample()

# Visualizar exemplos específicos:
runExample("02_text")
runExample("08_html")

# Diretório com todos os exemplos:
system.file("examples", package="shiny")

#para citar esse pacote
citation("shiny")


