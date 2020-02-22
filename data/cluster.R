library(fpc)

data <- read.table("txt/trope_vectors_format2.txt",  stringsAsFactors=FALSE, skipNul = TRUE)
pk <- pamk(data)
