# waffle plot

library(ggplot2)

library(ggthemes)

library(waffle)

parts <- c(`Not Spanked Aggressive` = 18, 
           `Not Spanked Not Aggressive` = 39, 
           `Spanked Aggressive` = 14,
           `Not Aggressive If Spanking Eliminated` = 3,
           `Spanked Not Aggressive` = 26)

waffle(parts) + 
  scale_fill_economist(name="Group") +
  labs(title = "Informative Title",
       subtitle = "DRAFT",
       caption = "Double check calculations")

ggsave("mywaffle.png")