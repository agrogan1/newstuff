library(waffle)

library(michigancolors)

names <- c("Placebo; No Cold", 
           "Placebo; Cold",
           "Ascorbic Acid; No Cold",
           "Ascorbic Acid; Cold")

vals <- c(109,31,122,17)

parts <- data.frame(names, vals)

waffle(parts, colors = c(michigancolors("blue"),
                         michigancolors("maize"),
                         michigancolors("wave field green"),
                         michigancolors("tappan red"))) +
  labs(title = "Fewer Colds Among Those Recieving Ascorbic Acid") 

ggsave("./categorical/visualizing-categorical-data/mywaffle.png")


