#! TO DO:
#!   add call to here::i_am
here::i_am("code/01_make_output1.R")
a <- read.csv(
  file=here::here("data_smoke.csv")
)

library(gtsummary)
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

lm1 <- lm(charges ~ as.factor(smoker) + age + sex + bmi + children + v1 + v2 + v3, data = a1)
tbl_regression(lm1)
table1=tbl_regression(lm1)

#! TO DO: 
#!   save random_numbers1 in output1 directory
saveRDS(
  table1, 
  file = here::here("output1/output1.rds")
)
