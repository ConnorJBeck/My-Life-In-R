library(ggplot2)

test <- c("Watching an In-Flight Movie", "WoW Fresh Private Server", "Snakes and Lattes", "Potential Band Interviews", "New Job", "Being in the Same City as Bae")
things <- factor(test, levels=test)
happiness <- c(2,4,7,12,17,58)

excitementTable <- data.frame(y=happiness,
                        x=things)
excitementTable

g3 <- ggplot(excitementTable, aes("", y, fill=x)) +
  geom_bar(stat="identity",width=1) +
  coord_polar("y",start=0) +
  scale_fill_brewer(palette="Dark2", name="Things I'm Excited About") +
  theme_minimal() +
  theme(axis.title.x = element_blank(),
        axis.text.x = element_blank(),
        axis.title.y = element_blank(),
        panel.border = element_blank(),
        panel.grid = element_blank(),
        axis.ticks = element_blank()) +
  ggsave("excitement.png")

g3
