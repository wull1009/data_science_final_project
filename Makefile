#! TO DO:
#! add a rule for rendering the combined report
report.html: report.Rmd output1/table1.csv output2/table2.csv output3/fig_plot1.png output4/fig_plot2.png output5/fig_plot3.png output6/fig_plot4.png 
	Rscript -e "rmarkdown::render('02_render_report.Rmd')"

#! TO DO: 
#! add a rule for building the output of 
#! code/01_make_table1.R
output1/table1.csv: code/01_make_table1.R
	Rscript code/01_make_table1.R
	
#! TO DO:
#! add a rule for building the output of 
#! code/01_make_table2.R
output2/table2.csv: code/01_make_table2.R
	Rscript code/01_make_table2.R

#! TO DO:
#! add a rule for building the output of 
#! code/02_make_fig1.R
output3/fig_plot1.png: code/02_make_fig1.R
	Rscript code/02_make_fig1.R

#! TO DO:
#! add a rule for building the output of 
#!code/02_make_fig2.R
output4/fig_plot2.png: code/02_make_fig2.R
	Rscript code/02_make_fig2.R

#! TO DO:
#! add a rule for building the output of 
#! code/02_make_fig3.R
output5/fig_plot3.png: code/02_make_fig3.R
	Rscript code/02_make_fig3.R

#! TO DO:
#! add a rule for building the output of 
#! code/02_make_fig4.R
output6/fig_plot4.png: code/02_make_fig4.R
	Rscript code/02_make_fig4.R



#! TO DO:
#! add a PHONY target for removing .rds files
#! from the output1/2/3/4/5/6 directories
PHONY:	clean
clean:
	rm	-f output1/*.csv	output2/*.csv	output3/*.png output4/*.png output5/*.png output6/*.png&&	\
	rm	-f	report.html
