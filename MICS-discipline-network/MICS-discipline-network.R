#' ---
#' title: "MICS Discipline Network"
#' author: "Andy Grogan-Kaylor"
#' date: "`r format(Sys.Date())`"
#' output:  
#'   html_document:
#'     highlight: haddock
#' ---

# load relevant libraries

library(haven) # read Stata

library(corrplot) # correlation plots

library(igraph) # network graphs

library(rgl) # 3D graphics

# get data

MICS <- read_dta("~/Box Sync/MICS/Data/MICS.dta")

# subset of data

# did I include all the forms of discipline?

mycorrelationdata <- subset(MICS,
                            select = c(d_psych_shout,
                                       d_psych_names,
                                       d_phys_shook,
                                       d_phys_spank,
                                       d_phys_hitslap,
                                       d_phys_hitobject,
                                       d_phys_hitface,
                                       d_phys_beathard,
                                       d_nvd_privileges,
                                       d_nvd_explained,
                                       d_nvd_gave
                                       ))

# correlation matrix

mycorrelationmatrix <- cor(mycorrelationdata, 
                           use = "pairwise.complete.obs")

mycorrelationmatrix # replay

# heatmap of correlations with Base R
# thanks to http://www.sthda.com/english/wiki/correlation-matrix-how-to-make-a-heatmap
# less useful data visualization I think

col <- colorRampPalette(c("blue", "white", "red"))(20)

heatmap(mycorrelationmatrix, 
        col=col, 
        symm=TRUE,
        main = "Heatmap of Correlations")

# corrplot
# very rough (lots of options to tweak to improve the design)
# more useful, however

corrplot(mycorrelationmatrix,
         main = "Correlation Plot",
         tl.col = "black")

# igraph

# make network object

network <- graph_from_adjacency_matrix(mycorrelationmatrix, 
                                       weighted=T, 
                                       mode="undirected", 
                                       diag = F)

# plot!
# very rough (lots of options to tweak to improve the design)
# Caveat Emptor: need to check this whole script for errors

network2 <- delete.edges(network, 
                         which(E(network)$weight < 0.10))

plot(network2,
     edge.width=E(network)$weight * 20, # edge width is weight of correlation
     main = "Network Diagram of Discipline Strategies",
     # layout = layout.kamada.kawai
     layout=layout.fruchterman.reingold
     )

# 3D with RGL!!!

# rgl.clear()
# 
# rglplot(network,
#         edge.width=E(network)$weight * 10, # edge width is weight of correlation
#         main = "Network Diagram of Discipline Strategies",
#         layout=layout.fruchterman.reingold,
#         vertex.color="orange")

library(ggplot2)

# library(ggnetwork)

library(ggraph)

ggraph(network, layout = "fr") + 
  geom_edge_fan() + 
  geom_node_point() +
  geom_node_label(aes(label=name)) +
  labs(title = "Network Diagram of Discipline Strategies",
       caption = "Need to Work on Edge Widths") +
  theme_void()

# ggplot(ggnetwork(network),
#        aes(x = x, y = y,
#            xend = xend, yend = yend)) +
#   geom_edges(aes(size=weight),
#              color = "grey75",
#              curvature = 0.1) +
#   geom_nodes() +
#   geom_nodetext_repel(aes(label=name)) +
#   theme_blank()




