library(dplyr) # data wrangling

condition <- c("A", "B", "C")

total_events <- c(100, 100, 100)

event_happened <- c(1, 10, 19)

mytable <- data.frame(condition, 
                      total_events,
                      event_happened)

mytable # replay

mytable %>% 
  mutate(risk = event_happened / total_events) %>%
  mutate(risk_difference = risk - lag(risk)) %>%
  mutate(event_didnt_happen = total_events - event_happened) %>%
  mutate(odds = event_happened / event_didnt_happen) %>%
  mutate(odds_ratio = odds / lag(odds))