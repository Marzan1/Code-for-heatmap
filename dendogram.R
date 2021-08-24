tr <- read.csv(file= "heatmap1.csv", sep = ",", header = TRUE)
row.names(tr) <- tr$X
tr <- tr[, 2:30]
dis <- dist(tr)
link <- as.dendrogram(hclust(dis, method = "complete"))
par(mar = c(3, 4, 1, 15))
plot(link, horiz = TRUE)