library(ggplot2)

alcohols <- c("Other", "Tequila", "Unknown", "Wine", "Beer", "Gin")
alcohols <- factor(alcohols, levels=alcohols)
liters <- c(0.6,0.9,1.5,8,9,20)

alcoholTable <- data.frame(y=liters,
                           x=alcohols)
alcoholTable

g4 <- ggplot(alcoholTable, aes(x, y)) +
  geom_bar(stat="identity") +
  xlab("Alcohol Type") +
  ylab("Liters (Adjusted for Alcohol %)") +
  scale_y_continuous(expand=c(0,0), limits=c(0,25)) + 
  theme(axis.text = element_text(size=12),
        axis.title=element_text(size=14),
        legend.title=element_text(size=14),
        legend.text = element_text(size=12),
        panel.grid = element_blank(),
        axis.ticks = element_blank()) + 
  theme_classic() +
  ggsave("alcohol.png")
g4
