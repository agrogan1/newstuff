capture log close
log using "spruce", smcl replace
//_1
display c(current_date)
//_2
display c(current_time)
//_3
clear all
quietly: cd "/Users/agrogan/Desktop/newstuff/spruce"
use spruce.dta, clear
//_4q

label variable Tree "Tree number"
    
label variable Competition "C (competition), CR (competition removed)"
    
label variable Fertilizer "F (fertilized), NF (not fertilized)"
    
label variable Height0 "Height (cm) of seedling at planting"
    
label variable Height5 "Height (cm) of seedling at year 5"
    
label variable Diameter0 "Diameter (cm) of seedling at planting"
        
label variable Diameter5 "Diameter (cm) of seedling at year 5"
    
label variable Ht_change "Change (cm) in height"
    
label variable Di_change "Change (cm) in diameter"
    
//_5
describe    
//_6
ttest Height5, by(Fertilizer)
//_7
display %5.2f r(mu_2)-r(mu_1)
//_8
regress Height5 Fertilizer Height0 Competition
//_9
display %5.2f _b[Fertilizer]
//_10
teffects psmatch (Height5) (Fertilizer Height0 Competition)
//_11q
matrix b = e(b) // get matrix of coefficients
//_12
display %5.2f b[1,1]
//_^
log close
