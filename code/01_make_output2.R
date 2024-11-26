here::i_am("code/01_make_output2.R")
a <- read.csv(
  file=here::here("data_smoke.csv")
)
options(warn = -1)
a$sex[which(a$sex=='female')]=1
a$sex[which(a$sex=='male')]=0
a$smoker[which(a$smoker=='yes')]=1
a$smoker[which(a$smoker=='no')]=0
a$sex=as.numeric(a$sex)
a$smoker=as.numeric(a$smoker)
head(a)
a=a[-9]
a1=a[c(1:1070),]

a=read.csv(file=here::here("data_smoke.csv"))

a$sex[which(a$sex=='female')]=1
a$sex[which(a$sex=='male')]=0
a$smoker[which(a$smoker=='yes')]=1
a$smoker[which(a$smoker=='no')]=0
a$sex=as.numeric(a$sex)
a$smoker=as.numeric(a$smoker)
a=a[-9]
head(a)
a1=a[c(1:1070),]

lm2=lm(charges~smoker+age+sex+bmi+children+v1+v2+v3,data=a1)
lm.aic=step(lm2,trace=F)
library(gtsummary)
table2=tbl_regression(lm.aic)

saveRDS(
  table2, 
  file = here::here("output2/output2.rds")
)
