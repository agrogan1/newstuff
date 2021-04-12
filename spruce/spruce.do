capture log close
log using "spruce", smcl replace
//_1
display c(current_date)
//_2
display c(current_time)
//_3
clear all
        
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
//_6q

/*
label define fertilizer 1 "Fertilizer" 2 "No Fertilizer"
    
label values Fertilizer fertilizer
    
dotplot Height5, over(Fertilizer) ///
title("Tree Height by Fertilizer") ///
xtitle("Fertilizer") xlabel("none") ///
ytitle("Tree Height At Year 5") ///
msymbol(none) mlabel(mylabel) ///
scheme(michigan)
*/
    
* generate mylabel = "🌲"
    
twoway (scatter Height5 Fertilizer if Fertilizer == 1) ///
(scatter Height5 Fertilizer if Fertilizer == 2), ///
title("Tree Height by Fertilizer") ///
xtitle("Fertilizer") xlabel("none") ///
ytitle("Tree Height At Year 5") ///
legend(order(1 "Fertilizer" 2 "No Fertilizer")) ///
scheme(michigan)
    
quietly: graph export myscatter.png, width(500) replace

//_7
ttest Height5, by(Fertilizer)
//_8
display %5.2f r(mu_2)-r(mu_1)
//_9
regress Height5 Fertilizer Height0 Competition
//_10
display %5.2f _b[Fertilizer]
//_11
teffects psmatch (Height5) (Fertilizer Height0 Competition)
//_12q
matrix b = e(b) // get matrix of coefficients
//_13
display %5.2f b[1,1]
//_14
tebalance density, ///
scheme(michigan)

graph export mydensity.png, width(500) replace
//_15q

/*
recode Fertilizer (2=1)(1=0), generate(F) // recode as 1/0
    
logit F Height0 Competition // logit model of propensity score
    
predict pscore // predict propensity score
    
twoway (kdensity pscore if F == 1) /// 
(kdensity pscore if F == 0), ///
title("Assessing Balance of Propensity Score") ///
xtitle("Propensity Score") ///
ytitle("Density") /// 
legend(order(1 "Fertilizer" 2 "No Fertilizer")) ///
scheme(michigan)
*/

//_16q

/*
* alternative syntax with psmatch2

psmatch2 F Height0 Competition, out(Height5) n(2) com

pstest, both
*/

//_^
log close
