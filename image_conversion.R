# 
library("magick")
library(here)
img <- image_read(here::here("images/diabetes_pahtogensis_IDF.png"))
image_write(img, format = "svg", path = here::here("images/diabetes_pahtogensis_IDF.svg"))
image_write(img, format = "pdf", path = here::here("images/diabetes_pahtogensis_IDF.pdf"))
image_write(img, format = "png", path = here::here("images/diabetes_pahtogensis_IDF.png"))
image_write(img, format = "tiff", path = here::here("images/diabetes_pahtogensis_IDF.tiff"))


img <- image_read(here::here("images/cohort_map.png"))
image_write(img, format = "tiff", path = here::here("images/cohort_map.tiff"))

img <- image_read(here::here("images/measurements_hrv.png"))
image_write(img, format = "svg", path = here::here("images/measurements_hrv.svg"))
image_write(img, format = "pdf", path = here::here("images/measurements_hrv.pdf"))
image_write(img, format = "tiff", path = here::here("images/measurements_hrv.tiff"))

img <- image_read(here::here("images/physcosocial_model.png"))
image_write(img, format = "svg", path = here::here("images/physcosocial_model.svg"))
image_write(img, format = "pdf", path = here::here("images/physcosocial_model.pdf"))
image_write(img, format = "tiff", path = here::here("images/physcosocial_model.tiff"))

img <- image_read(here::here("images/risk_stratification.png"))
image_write(img, format = "svg", path = here::here("images/risk_stratification.svg"))
image_write(img, format = "pdf", path = here::here("images/risk_stratification.pdf"))
image_write(img, format = "tiff", path = here::here("images/risk_stratification.tiff"))

#error!!
convert_pdfs_to_png <- function(images_dir = here::here("images")) {
  # Get all PDF files in the directory
  pdf_files <- list.files(images_dir, pattern = "\\.pdf$", full.names = TRUE)
  
  # Loop through each PDF and convert to PNG
  for (pdf_path in pdf_files) {
    # Read the PDF
    img <- image_read(pdf_path)
    
    # Create PNG file path
    png_path <- sub("\\.pdf$", ".png", pdf_path)
    
    # Write as PNG
    image_write(img, format = "png", path = png_path)
    
    message("Converted: ", pdf_path, " -> ", png_path)
  }
}

convert_pdfs_to_png()
