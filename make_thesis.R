# render thesis
library("quarto")

# html

quarto_render(output_format = "html")


#pdf

quarto_render(output_format = "pdf")

quarto_render(output_format = "docx")

#both pdf and html
quarto_render()
