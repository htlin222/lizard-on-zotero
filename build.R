#!/usr/bin/Rscript --vanilla
#
# Check if rmarkdown package is installed
if (!requireNamespace("rmarkdown", quietly = TRUE)) {
  # Set default CRAN mirror
  options(repos = c(CRAN = "https://cran.rstudio.com/"))

  # Install rmarkdown package
  install.packages("rmarkdown")
}

# Check if bookdown package is installed
if (!requireNamespace("bookdown", quietly = TRUE)) {
  # Set default CRAN mirror
  options(repos = c(CRAN = "https://cran.rstudio.com/"))

  # Install bookdown package
  install.packages("bookdown")
}

# Check if downlit package is installed
if (!requireNamespace("downlit", quietly = TRUE)) {
  # Set default CRAN mirror
  options(repos = c(CRAN = "https://cran.rstudio.com/"))

  # Install downlit package
  install.packages("downlit")
}

# Check if xml2 package is installed
if (!requireNamespace("xml2", quietly = TRUE)) {
  # Set default CRAN mirror
  options(repos = c(CRAN = "https://cran.rstudio.com/"))

  # Install xml2 package
  install.packages("xml2")
}

# Load required packages
library(rmarkdown)
library(bookdown)
library(downlit)
library(xml2)

# Render the site
rmarkdown::render_site(output_format = 'bookdown::bs4_book', encoding = 'UTF-8')
