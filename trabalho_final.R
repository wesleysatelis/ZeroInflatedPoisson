library(tidyverse)

fish <- read_csv("banco/fish.csv")

fish <- within(fish, {
  # FISH_COUNT <- factor(FISH_COUNT)
  LIVE_BAIT <- factor(LIVE_BAIT)
  CAMPER <- factor(CAMPER)
})

summary(fish)

ggplot(fish, aes(FISH_COUNT)) + 
  geom_histogram(col="grey") +
  scale_x_discrete(limits=seq(0, 150, 10)) +
  theme_bw()

ggplot(fish, aes(FISH_COUNT)) + 
  geom_histogram(col="grey") +
  # scale_x_discrete(limits=seq(0, 150, 10)) +
  theme_bw() + 
  scale_x_log10()

# health <- read_csv("~/Desktop/dados-contagem-escolas.txt")
# symp <- read.table("~/Desktop/dados_baependi.csv", sep=";")
