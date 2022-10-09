# visualizing odds and risk

library(ggplot2) # beautiful graphs

library(gganimate) # animations

library(geomtextpath) # text that follows paths

# define a function to return probabilities

my_logistic_function <- function(b, x) {
  p <- exp(b * x) / (1 + exp(b * x))
  return(p)
}

x <- seq(-10, 10, .1) # x

y1 <- my_logistic_function(0.6931472, x) # OR of 2.0

y2 <- my_logistic_function(0.2231436, x) # OR of 1.25

mydata <- data.frame(x, y1, y2) # dataframe

p0 <- ggplot(mydata,
       aes(x = x)) +
  geom_textpath(aes(x = 0, #reference line
                    y = y1, 
                    label = "x = 0"),
                hjust = 0,
                color = "darkgrey") +
  geom_textpath(aes(x = 1, # reference line
                    y = y1, 
                    label = "x = 1"),
                hjust = 0,
                color = "darkgrey") +
  geom_textpath(aes(y = y1,
                    label = "Odds ratio of 2"), 
                hjust = .8,
                vjust = -0.5,
                color = "blue") +
  geom_textpath(aes(y = y2,
                    label = "Odds ratio of 1.25"), 
                hjust = 0.8,
                vjust = -0.5,
                color = "red") +
  annotate("point", # annotations for OR of 2.0
           x = c(0, 1),
           y = c(my_logistic_function(0.6931472, 0),
                 my_logistic_function(0.6931472, 1))) +
  annotate("text", 
           x = c(-0.5, 0.5),
           y = c(my_logistic_function(0.6931472, 0),
                 my_logistic_function(0.6931472, 1)), 
           label = round(c(my_logistic_function(0.6931472, 0),
                           my_logistic_function(0.6931472, 1)),
                         digits = 2),
           hjust = 1,
           color = "blue") +
  annotate("text",
           x = -5,
           y = .75,
           label = "relative change of \n.67 / .5 = 1.34",
           color = "blue") +
  annotate("point", # annotations for OR of 1.25
           x = c(0, 1),
           y = c(my_logistic_function(0.2231436, 0),
                 my_logistic_function(0.2231436, 1))) +
  annotate("text", 
           x = c(1.5, 1.5),
           y = c(my_logistic_function(0.2231436, 0),
                 my_logistic_function(0.2231436, 1)), 
           label = round(c(my_logistic_function(0.2231436, 0),
                     my_logistic_function(0.2231436, 1)),
                     digits = 2),
           hjust = 0,
           color = "red") +
  annotate("text",
           x = 5,
           y = .25,
           label = "relative change of \n.56 / .5 = 1.12",
           color = "red") +
  labs(title = "Visualizing Odds and Risks",
       subtitle = paste("In Logistic Regression,", 
                        "Odds Ratios Are Not The Same Thing As Risk,",
                        "\nor Changes in Risk"),
       x = "x",
       y = "probability",
       caption = paste("Because the logistic function is non-linear",
                       "\nthe change in probability for a 1 unit change in x",
                       "\nwill be different at every value of x.",
                       "\nhttps://agrogan1.github.io/")) +
  scale_x_continuous(breaks = seq(-10, 10, by = 1)) +
  theme_minimal() +
  theme(panel.grid.minor.x = element_blank()) 

p0 # replay

# save to PDF

ggsave("./categorical/visualizing-odds-and-risks/visualizing-odds-and-risks.pdf",
       p0)

p1 <- p0 + # animated version
  transition_layers(layer_length = 1, 
                    transition_length = 2) +
  enter_fly(x_loc =  -10,
            y_loc = .5)

animate(p1, 
        res = 150,
        width = 1000,
        height = 1000,
        renderer = gifski_renderer(loop = FALSE)) # animate

# save animation

anim_save("./categorical/visualizing-odds-and-risks/visualizing-odds-and-risks.gif", 
          animation = last_animation())



