# render thesis
library("quarto")

# html

quarto_render(output_format = "html")


#pdf
#install.packages("tinytex")
#tinytex::install_tinytex() install tinytex for processing LaTeX files

quarto_render(output_format = "pdf")

quarto_render(output_format = "docx")

#both pdf and html
quarto_render()
