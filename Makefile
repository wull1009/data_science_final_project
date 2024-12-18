.PHONY: all clean install build_image run_docker

IMAGE_NAME=wull1009/debug_renv
CONTAINER_NAME=debug_renv_container

all: install output1/table1.rds output2/table2.rds output3/fig_plot1.png output4/fig_plot2.png output5/fig_plot3.png output6/fig_plot4.png report.html

install:
	docker run --rm -v "$(PWD):/workspace" $(IMAGE_NAME) Rscript -e "renv::restore()"

output1/table1.rds: code/01_make_output1.R
	docker run --rm -v "$(PWD):/workspace" $(IMAGE_NAME) Rscript code/01_make_output1.R

output2/table2.rds: code/01_make_output2.R
	docker run --rm -v "$(PWD):/workspace" $(IMAGE_NAME) Rscript code/01_make_output2.R

output3/fig_plot1.png: code/01_make_output3.R
	docker run --rm -v "$(PWD):/workspace" $(IMAGE_NAME) Rscript code/01_make_output3.R

output4/fig_plot2.png: code/01_make_output4.R
	docker run --rm -v "$(PWD):/workspace" $(IMAGE_NAME) Rscript code/01_make_output4.R

output5/fig_plot3.png: code/01_make_output5.R
	docker run --rm -v "$(PWD):/workspace" $(IMAGE_NAME) Rscript code/01_make_output5.R

output6/fig_plot4.png: code/01_make_output6.R
	docker run --rm -v "$(PWD):/workspace" $(IMAGE_NAME) Rscript code/01_make_output6.R

report.html: code/02_render_report.R output1/table1.rds output2/table2.rds output3/fig_plot1.png output4/fig_plot2.png output5/fig_plot3.png output6/fig_plot4.png
	docker run --rm -v "$(PWD):/workspace" $(IMAGE_NAME) Rscript code/02_render_report.R

clean:
	rm -f output1/*.rds output2/*.rds output3/*.png output4/*.png output5/*.png output6/*.png report.html


build_image:
	docker build -t $(IMAGE_NAME) .

run_docker:
	docker run --rm -v "$(PWD):/workspace" $(IMAGE_NAME) make all
