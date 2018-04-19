library(ggplot2)

time <- c(0:30)
rock_band_hours <- c(0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0.1,0.2,0.4,0.6,0.9,0.6,1,1.5,1.2,1.9,1.8,2,2.5,3.1,4)

rockBandTable <- data.frame(y=rock_band_hours,
                           x=time)
rockBandTable

g5 <- ggplot(rockBandTable, aes(x, y)) +
  geom_line(size=2) +
  xlab("Time") +
  ylab("Hours Spent Playing Rock Band Per Week") +
  scale_y_continuous(limits=c(0,4)) +
  theme_classic() +
  theme(line=element_line(color="#CC6666",size=2),
        axis.text.x = element_blank(),
        axis.text.y = element_blank(),
        axis.title=element_text(size=14),
        panel.grid = element_blank(),
        axis.ticks = element_blank()) +
  ggsave("rock_band.png")
g5

