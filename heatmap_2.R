library(ggplot2)
library(reshape)
h <- read.csv(file = "heatmap.csv", sep = ",", header = TRUE)
h1 <- melt(h)
hp <- ggplot(h1, aes(variable, Species, fill = value)) + geom_tile()
hp_1 <- hp + xlab("Species") + ylab("Species") + ggtitle("Comparisons")
hp_1 <- hp_1 + scale_fill_gradient2(low = "blue", mid = "White", high = "red")
hp_1 <- hp_1 + scale_fill_gradient2(low = "blue", mid = "White", high = "red") + theme_minimal() + theme(axis.text.x = element_text(angle = 60, vjust = 1, size = 12, hjust = 1))