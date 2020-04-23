# get Spruce data in Stata format

library(resampledata) # package with data

data(Spruce)

# save as Stata

# library(foreign) # work with Stata
 
# write.dta(Spruce, file = "Spruce.dta")

library(haven) # work with Stata

colnames(Spruce)[8] <- "Ht_change"

colnames(Spruce)[9] <- "Di_change"

write_dta(Spruce, "Spruce.dta")



