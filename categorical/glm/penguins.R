# get penguin data and write to Stata

library(palmerpenguins) # Palmer Penguins Data

library(foreign) # read and write Stata

# library(haven) # read and write Stata

data("penguins")

write.dta(penguins, file = "penguins.dta")
