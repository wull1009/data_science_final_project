here::i_am("code/01_make_output4.R")

library(ggplot2)
library(RColorBrewer)
library(gridExtra)
xy<-data.frame(a)
p1<-ggplot(xy, aes(age, fill = sex)) + geom_density(alpha = 0.2)+ggtitle("Fig.2 Age frequency distribution plot by gender. ")+ theme(plot.title = element_text(hjust = 0.5))
p2<-ggplot(xy, aes(bmi, fill = sex)) + geom_density(alpha = 0.2)+ggtitle("BMI frequency distribution plot by gender.")+ theme(plot.title = element_text(hjust = 0.5))
fig2=grid.arrange(p1,p2)

ggplot2::ggsave(
  fig2, 
  file = here::here("output4/output4.png")
)
