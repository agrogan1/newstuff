# Alluvial Diagram

library(ggplot2)

library(ggalluvial)

library(michigancolors)

# set up data

Tx <- c("Placebo", 
           "Placebo",
           "Ascorbic Acid",
           "Ascorbic Acid")

outcome <- c("No Cold",
             "Cold",
             "No Cold",
             "Cold")

count <- c(109, 31, 122, 17)

FrenchSkiiers <- data.frame(Tx, outcome, count)

# graph

ggplot(FrenchSkiiers, 
       aes(y = count, 
           axis1 = Tx, 
           axis2 = outcome)) +
  geom_alluvium(aes(fill = outcome), # alluvia; flows
                alpha = .75) +
  geom_stratum(width = 1/3, # end "strata"
               fill = "grey", # color fill
               color = "black", # outline color
               color = "grey") +
  geom_label(stat = "stratum", # textual labels
             aes(label = after_stat(stratum))) +
  theme_minimal() + # minimal theme
  labs(title = "Fewer Colds Among Those Recieving Ascorbic Acid") +
  scale_fill_manual(values = michigancolors()) # Michigan graph colors

ggsave("./categorical/visualizing-categorical-data/myalluvial.png")




