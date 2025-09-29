library(here)

convert_pdfs_to_png_inkscape <- function(input_dir = here::here("images"),
                                         output_dir = here::here("images/web"),
                                         dpi = 300) {
  # Create output dir if it doesn't exist
  if (!dir.exists(output_dir)) dir.create(output_dir, recursive = TRUE)
  
  pdf_files <- list.files(input_dir, pattern = "\\.pdf$", full.names = TRUE)
  if (length(pdf_files) == 0) {
    message("No PDF files found in ", input_dir)
    return(invisible(NULL))
  }
  
  for (pdf in pdf_files) {
    base <- tools::file_path_sans_ext(basename(pdf))
    png_out <- file.path(output_dir, paste0(base, ".png"))
    
    # Inkscape CLI (new version ≥1.0)
    system2("/Applications/Inkscape.app/Contents/MacOS/inkscape", args = c(pdf,
                                 "--export-type=png",
                                 paste0("--export-filename=", png_out),
                                 paste0("--export-dpi=", dpi)))
    
    message("Converted: ", pdf, " → ", png_out)
  }
  
  invisible(output_dir)
}

# 🚀 Run conversion for all PDFs in images → images/web
convert_pdfs_to_png_inkscape()
