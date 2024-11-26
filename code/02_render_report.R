#! TO DO:
#!   add call to here::i_am
here::i_am("code/02_render_report.R")

library(rmarkdown)
library(ggplot2)
library(dplyr)
rmarkdown::render(
  here::here("report.Rmd"),
  knit_root_dir = here::here()
)