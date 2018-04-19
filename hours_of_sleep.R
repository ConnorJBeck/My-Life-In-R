library(ggplot2)

hours_of_sleep <- c(6.7, 6.16667, 7.1, 7.71667, 6.43337, 7.21667, 7.66667, 4.51667, 9.91667, 6.36667, 7.95, 7.33333, 8.1, 7.03333, 7.41667, 6.3, 6.1, 6.2)
date <- c("01","02","03","04","05","06","07","08","09","10","11","12","13","14","15","16","17","18")

sleepTable <- data.frame(y=hours_of_sleep,
                        x=date)
sleepTable

g2 <- ggplot(sleepTable, aes(x, y)) +
  geom_bar(stat="identity") +
  xlab("Date (of April 2018)") +
  scale_x_discrete(breaks=date) + 
  ylab("Sleep (Hours)") +
  scale_y_continuous(expand=c(0,0), limits=c(0,10)) + 
  theme(axis.text = element_text(size=12),
        axis.title=element_text(size=14),
        legend.title=element_text(size=14),
        legend.text = element_text(size=12),
        panel.grid = element_blank(),
        axis.ticks = element_blank()) + 
  theme_classic() +
  ggsave("hours_of_sleep.png")

g2
