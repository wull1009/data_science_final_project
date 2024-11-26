here::i_am("code/01_make_output5.R")
a <- read.csv(
  file=here::here("data_smoke.csv")
)
xy<-data.frame(a)
library(ggplot2)
fig3=ggplot(data=xy,aes(x=children,fill=sex))+geom_histogram(alpha=0.8,position = "dodge",bins = 10)+ggtitle("Fig.3 Distribution plot of the number of children by gender.")+theme(plot.title = element_text(hjust = 0.5))+ 
  labs(x = "Number of children/dependents", y = "Count")

#! TO DO: 
#!   save random_numbers1 in output1 directory
ggplot2::ggsave(
  fig3, 
  file = here::here("output5/output5.png")
)
