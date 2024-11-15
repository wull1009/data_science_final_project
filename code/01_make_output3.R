here::i_am("code/01_make_output3.R")

library(ggplot2)
a$sex=as.factor(a$sex)

fig1=ggplot(a, aes(x=sex, y=charges,col=sex)) + geom_boxplot()+ggtitle("Fig.1 Plot of the relationship between sex and charges")+ theme(plot.title = element_text(hjust = 0.5))

ggplot2::ggsave(
  fig1, 
  file = here::here("output3/output3.png")
)
