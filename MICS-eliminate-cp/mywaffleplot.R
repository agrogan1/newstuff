# waffle plot

library(ggplot2)

library(ggthemes)

library(waffle)

parts <- c(`Not Spanked And Displays Aggression` = 18, 
           `Not Spanked And Does Not Display Aggression` = 39, 
           `Spanked And Displays Aggression` = 14,
           `Would Not Display Aggression If Spanking Eliminated` = 3,
           `Spanked And Does Not Display Aggression` = 26)

waffle(parts) + 
  # scale_fill_economist(name="Group") +
  scale_fill_tableau(name="Group",
                     direction = -1) +
  labs(title = "Informative Title",
       subtitle = "DRAFT",
       caption = "Double check calculations")

ggsave("mywaffle.png")