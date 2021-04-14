# slope graph

library(ggplot2)

library(dplyr)

load("social-service-agency.RData")

clients %>%
  group_by(program) %>%
  summarise(m_mh_1 = mean(mental_health_T1),
            m_mh_2 = mean(mental_health_T2)) %>%
  ggplot() +
  geom_segment(aes(x = 1,
                   y = m_mh_1,
                   xend = 2,
                   yend = m_mh_2,
                   color = program),
               show.legend = FALSE) +
  geom_point(aes(x = 1, 
                 y = m_mh_1,
                 color = program),
             size = 5) +
  geom_point(aes(x = 2,
                 y = m_mh_2,
                 color = program),
             size = 5) +
  labs(title = "Mental Health at Time 1 and Time 2",
       subtitle = "By Program",
       x = "Time",
       y = "Mental Health",
       caption = "Higher Scores Represent Better Mental Health") +
  scale_color_viridis_d() +
  ylim(80,110) +
  theme_minimal() 

# ggsave("slopegraph.png",
#        height = 2,
#        width = 4)





