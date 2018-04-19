library(ggplot2)

tests_taken <- c(91, 3,3,3, 100, 0,0,0)
taken <- factor(c("Taken on Time", "Slept Through", "Time Changed", "Literally Forgot", "Taken on Time", "Slept Through", "Time Changed", "Literally Forgot"))
taken <- factor(taken, levels(taken)[c(3,2,4,1)])
degree <- factor(c("Psychology", "Psychology","Psychology","Psychology","Computer Science", "Computer Science","Computer Science","Computer Science"))
degree <- factor(degree, levels(degree)[c(2,1)])

examTable <- data.frame(counts=tests_taken,
                        taken=taken,
                        degree=degree)
examTable

g1 <- ggplot(examTable, aes(taken, counts, fill=degree)) +
  geom_bar(stat="identity", position="dodge") +
  scale_fill_discrete(name="Degree") +
  xlab("Reasons for Missing Final Exam") +
  ylab("Proportion of Exams (%)") +
  scale_y_continuous(expand=c(0,0)) + 
  theme(axis.text = element_text(size=12),
        axis.title=element_text(size=14),
        legend.title=element_text(size=14),
        legend.text = element_text(size=12)) + 
  theme_classic() + 
  ggsave("exam_attendance.png")

g1
