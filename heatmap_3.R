library(gplots)
hm <- read.csv(file = "heatmap.csv", sep = ",", header = TRUE)
row.names(hm) <- hm$Species
row.names(hm)
hm <- hm[, 2:30]
hm_mat <- data.matrix(hm)
heatmap.2(hm_mat, trace = "none", col = colorRampPalette(c("tomato", "white", "light sky blue"))(156), margins = c(10,10))