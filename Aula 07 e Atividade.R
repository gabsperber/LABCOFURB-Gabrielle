# AULA 07
# CÓDIGO ELABORADO PELO CHATGPT PARA ELABORAR OS GRÁFICOS

# DADOS EM PAINEL

library(WDI)
library(ggplot2)
library(dplyr)

# Baixando os dados
dadosexpec <- WDI(country = "all", indicator = "SP.DYN.LE00.IN")

# Separando os dados do Brasil
dados_brasil <- filter(dadosexpec, country == "Brazil")

# Criando o gráfico com as modificações
graficoexpectativa <- ggplot(data = dadosexpec, aes(x = year, y = SP.DYN.LE00.IN)) +
  geom_point(color = "gray60", alpha = 0.5, size = 1.5) +  # pontos para todos os países
  geom_line(data = dados_brasil, aes(x = year, y = SP.DYN.LE00.IN), color = "red", size = 1) +  # linha do Brasil
  geom_point(data = dados_brasil, aes(x = year, y = SP.DYN.LE00.IN), color = "red", size = 2) +  # pontos do Brasil
  labs(title = "Expectativa de Vida ao Nascer no Mundo e no Brasil",x = "Ano",y = "Idade") +
  theme_minimal(base_family = "Helvetica") +
  theme(plot.title = element_text(size = 16, face = "bold"),axis.title = element_text(size = 12),legend.position = "none")  # remove a legenda

# Exibindo o gráfico
print(graficoexpectativa)


# CORTE TRANSVERSAL 

library(WDI)
library(ggplot2)

# Dados apenas do Brasil
dadosexpec2023 <- WDI(country = "BR", indicator = "SP.DYN.LE00.IN")

# Gráfico com as modificações
graficoexpeccorte <- ggplot(dadosexpec2023, aes(x = year, y = SP.DYN.LE00.IN)) +
  geom_point(color = "red", size = 2) +  # pontos em vermelho
  geom_line(color = "red", size = 1) +   # linha conectando os pontos
  labs(title = "Expectativa de Vida ao Nascer no Brasil",x = "Ano",y = "Idade") +
  theme_minimal(base_family = "Helvetica") +
  theme(plot.title = element_text(size = 16, face = "bold"),axis.title = element_text(size = 12),legend.position = "none")  # não necessário, mas incluído para garantir

# Exibir o gráfico
print(graficoexpeccorte)

# SERIE TEMPORAL 

library(WDI)
library(ggplot2)

# Carrega os dados do Brasil
dadosexpecbr <- WDI(country = "BR", indicator = "SP.DYN.LE00.IN")

# Gráfico com estilo moderno
graficoexpecserie <- ggplot(dadosexpecbr, aes(x = year, y = SP.DYN.LE00.IN)) +
  geom_line(color = "#FF4C4C", size = 1.2) +       # Linha em vermelho suave
  labs(
    title = "Evolução da Expectativa de Vida no Brasil",
    x = "Ano",
    y = "Idade"
  ) +
  theme_minimal(base_family = "Helvetica") +      # Estilo moderno e limpo
  theme(
    plot.title = element_text(size = 16, face = "bold", color = "black"),
    axis.title = element_text(size = 12, color = "black"),
    axis.text = element_text(color = "gray30"),
    legend.position = "none"                      # Remove a legenda
  )

# Exibe o gráfico
print(graficoexpecserie)


