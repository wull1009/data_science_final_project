here::i_am("code/01_make_output2.R")

a1=read.csv(file=here::here("data_smoke.csv"))

lm2=lm(charges~smoker+age+sex+bmi+children+v1+v2+v3,data=a1)
lm.aic=step(lm2,trace=F)
library(gtsummary)
table2=tbl_regression(lm.aic)

saveRDS(
  table2, 
  file = here::here("output2/output2.rds")
)
