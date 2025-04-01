# Aula 06 e Atividade - EXPECTATIVA DE VIDA

graficoexpectativa <- ggplot(data = dadosexpec, mapping = aes(y= SP.DYN.LE00.IN, x= year)) + geom_point()
print(graficoexpectativa)

# CORTE TRANSVERSAL

graficoexpeccorte <- ggplot(dadosexpec2023, mapping = aes(y= SP.DYN.LE00.IN, x= year)) + geom_point()
print(graficoexpeccorte)

# SERIE TEMPORAL

graficoexpecserie <- ggplot(dadosexpecbr, mapping = aes(y= SP.DYN.LE00.IN, x= year)) + geom_line()
print(graficoexpecserie)
