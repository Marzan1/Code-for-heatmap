ff <- read.csv(file = "heatmap.csv", sep = ",", header = TRUE)
row.names(ff) <- ff$X
ff <- ff[, 2:30]
ff_matrix <- data.matrix(ff)
ff_heatmap <- heatmap(ff_matrix, Rowv = NA, Colv = NA, col = heat.colors(256), scale = "column", margins = c(5,10), par(mar = rep(m, n)), keep.dendro = TRUE)