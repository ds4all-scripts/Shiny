# Artigo 1 -  Introdução ao Shiny -----------------------------------------
# 1 - Instalação:
# Como o pacote já vem no Rstudio basta usar library()
# Para outras IDE's, usar install.packages("shiny").
library(shiny)

# 2 - Exemplos:
# Visualizar todos os exemplos:
runExample()

# Visualizar exemplos específicos:
runExample("01_hello")
runExample("08_html")

# Diretório com todos os exemplos:
system.file("examples", package="shiny")

#para citar esse pacote
citation("shiny")

runGist (6571951)
