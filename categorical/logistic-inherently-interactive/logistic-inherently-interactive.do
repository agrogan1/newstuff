capture log close
log using "logistic-inherently-interactive", smcl replace
//_1
display c(current_date)
//_2
display c(current_time)
//_3
use http://www.stata-press.com/data/r15/margex, clear // simulated data for margins
//_4
regress outcome age i.group // linear model with only main effects, no interactions
//_5
margins group, at(age = (20(10)60)) // calculate margins
//_6
marginsplot, scheme(michigan) // marginsplot
//_7
graph export mymarginplot1.png, width(500) replace
//_8
logit outcome age i.group // logistic model with only main effects, no interactions
//_9
margins group, at(age = (20(10)60)) // calculate margins
//_10
marginsplot, scheme(michigan) // marginsplot
//_11
graph export mymarginplot2.png, width(500) replace
//_^
log close
