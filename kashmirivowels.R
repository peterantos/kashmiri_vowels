library(tidyverse)
library(ggplot2)
library(cluster)

df <- read.csv("C:\\Users\\pabut\\Downloads\\kashmiri vowels - mono.csv")

ggplot(df, mapping=aes(F2, F1, label=Vowel)) + geom_text(
  
) + scale_x_reverse() + scale_y_reverse()

Cluster1 <- kmeans(df[,3:4], center=5, nstart=20)
table(Cluster1$cluster, df$Vowel)
clusplot(df, Cluster1$cluster, color=T, shade=T, labels=0, lines=0)
