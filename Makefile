.PHONY: build run clean install

# 镜像名称
IMAGE_NAME=wull1009/debug_renv
build:
	make build

run:
	make run

clean:
	make clean
	
install:
	Rscript -e "renv::restore()"

# Build report
report.html: report.Rmd output1/table1.rds output2/table2.rds output3/fig_plot1.png output4/fig_plot2.png output5/fig_plot3.png output6/fig_plot4.png
	Rscript code/02_render_report.R

# Rules for building outputs
output1/table1.rds: code/01_make_output1.R
	Rscript code/01_make_output1.R

output2/table2.rds: code/01_make_output2.R
	Rscript code/01_make_output2.R

output3/fig_plot1.png: code/01_make_output3.R
	Rscript code/01_make_output3.R

output4/fig_plot2.png: code/01_make_output4.R
	Rscript code/01_make_output4.R

output5/fig_plot3.png: code/01_make_output5.R
	Rscript code/01_make_output5.R

output6/fig_plot4.png: code/01_make_output6.R
	Rscript code/01_make_output6.R
