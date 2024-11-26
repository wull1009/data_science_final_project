# Code Description

`code/01_make_output1.R`
- generate table1
- read data from 'data_smoke.csv', establish model
- table1 includes the table for lm()
- saves table as a `.csv` object in `output1/` folder

`code/01_make_output2.R`
- generate table2
- read data and establish model
- table2 is for variable selection
- saves table as a `.csv` object in `output2/` folder

`code/01_make_output3.R`
- generate fig1
- read data and use ggplot() to plot to have descriptive analysis
- fig1 is the plot of the relationship between sex and charges
- saves table as a `.png` object in `output3/` folder

`code/01_make_output4.R`
- generate fig2
- same as fig1
- saves table as a `.png` object in `output3/` folder

`code/01_make_output5.R`
- generate fig3
- saves table as a `.png` object in `output3/` folder

`code/01_make_output6.R`
- generate fig4
- saves table as a `.png` object in `output3/` folder

`report.Rmd`
- loads each set from output1-6 while have descriptive at the same time

## How to set up the environment

To restore the required R package environment for this project, use the following steps:

1. Make sure you have R installed on your system.
2. Clone the repository:
   ```bash
   git clone https://github.com/wull1009/data_science_final_project.git
3. Navigate to the project directory
  cd data_science_final_project

