#EXPECTATIVA DE VIDA

install.packages("WDI")
library("WDI")

options(scipen = 999)
#DADOS EM PAINEL
dadosexpec <- WDI(country = "all",indicator = "SP.DYN.LE00.IN")

paises <- c('BR','US')

dadosexpecbrus <- WDI(country = paises, indicator = "SP.DYN.LE00.IN")

#CORTE TRANSVERSAL
dadosexpec2023 <- WDI(country = "BR",indicator = "SP.DYN.LE00.IN" )

#SERIE TEMPORAL
dadosexpecbr <- WDI(country = "BR",indicator = "SP.DYN.LE00.IN")
