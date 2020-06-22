# Exemplos ggplot
library(dslabs)
library(tidyverse)
data(murders)


png('rplot.png', width = 600, height = 500)

r = murders %>% summarize(rate = sum(total) / sum(population) * 10^6) %>% .$rate


# Forma ruim
# p = ggplot(murders)

# p + geom_point(aes(population / 10^6, total), size = 3) + 
#    geom_text(aes(population / 10^6, total, label = abb), nudge_x = 1) +
#    geom_text(aes(10, 800, label = "Olá"))

# Forma decente
p = ggplot(murders, aes(population / 10^6, total, label = abb))
p + geom_point(aes(col = region), size = 4) + 
    geom_text(nudge_x = 0.075) + 
    scale_x_log10() + 
    scale_y_log10() +
    xlab('Populações em milhões (escala logarítmica)') +
    ylab('Número total de assassinatos (escala logarítmica)') +
    ggtitle("Assassinatos a mão armada nos EUA em 2010") + 
    geom_abline(intercept = log10(r)) + 
    scale_color_discrete(name = "Region")
    

dev.off()