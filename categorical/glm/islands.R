# location of Dream Island

library(plotly)

islands <- data.frame(lat = c(-64.733333), 
                      lon = c(-64.233333))

l <- list(color = toRGB("grey"), width = 0.5)

plot_geo(islands, 
         lat = ~lat, 
         lon = ~lon,
         size = I(30),
         color = I("red")) %>%
  layout(# title = "Location of Dream Island", 
    geo = list(showland = TRUE,  
               landcolor = toRGB("grey"),
               showcountries = TRUE,
               showocean=FALSE, 
               oceancolor="LightBlue",
               projection = list(type = 'orthographic',
                                 rotation = list(lon = -64.733333,
                                                 lat = -64.233333,
                                                 roll = 0)),
               lataxis = list(showgrid = TRUE,
                              gridcolor = toRGB("black")),
               lonaxis = list(showgrid = TRUE,
                              gridcolor = toRGB("black")))) 



