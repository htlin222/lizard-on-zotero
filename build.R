#!/usr/bin/env Rscript
if(!require("downlit")){
	install.packages("bookdown", repos = "http://cran.r-project.org")
}
if(!require("xml2")){
	install.packages("bookdown", repos = "http://cran.r-project.org")
}
if(!require("bookdown")){
	install.packages("bookdown", repos = "http://cran.r-project.org")
}
bookdown::render_book()
