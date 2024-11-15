#! TO DO:
#!   add call to here::i_am
here::i_am("code/01_make_output6.R")

library(ggplot2)
fig4=ggplot(a, aes(x=smoker, y=charges,col=sex)) + geom_boxplot()+
  ggtitle("Fig.4 Plot of the relationship between smoking and insurance charges")+theme(plot.title = element_text(hjust = 0.5))

#! TO DO: 
#!   save random_numbers1 in output1 directory
ggplot2::ggsave(
  fig4, 
  file = here::here("output6/output6.png")
)
