#! TO DO:
#!   add call to here::i_am
here::i_am("code/01_make_output1.R")

library(gtsummary)
lm1 <- lm(charges ~ as.factor(smoker) + age + sex + bmi + children + v1 + v2 + v3, data = a1)
tbl_regression(lm1)
table1=tbl_regression(lm1)

#! TO DO: 
#!   save random_numbers1 in output1 directory
saveRDS(
  table1, 
  file = here::here("output1/output1.rds")
)
