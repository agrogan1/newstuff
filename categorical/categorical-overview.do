* Create Image of Models Being Used This Semester

set scheme michigan // set graph scheme

* logistic regression

twoway function y = exp(x)/(1 + exp(x)), ///
range(-10 10) ///
lcolor("0 39 76") /// blue
title("Logistic Regression") ///
ytitle("What is the probability of the outcome?") ///
name(logit, replace) 

* ordinal logistic regression

twoway function y = exp(x)/(1 + exp(x)), ///
range(-10 10) ///
lcolor("255 203 5") /// maize
title("Ordinal Logistic Regression") ///
ytitle("What is the probability of a higher value" "rather than a lower value?") ///
name(ologit, replace)

* multinomial logistic regression

twoway function y = exp(x)/(1 + exp(x)), ///
range(-10 10) ///
lcolor("154 51 36") /// Tappan red
ytitle("What is the probability of outcome 2" "rather than outcome 1?") ///
name(mlogit2, replace)

twoway function y = exp(x)/(1 + exp(x)), ///
range(-10 10) ///
lcolor("216 96 24") /// Ross orange
ytitle("What is the probability of outcome 3" "rather than outcome 1?") ///
name(mlogit3, replace)

graph combine mlogit2 mlogit3, ///
title("Multinomial Logistic Regression") ///
subtitle("What is the probability of each category of the outcome?") ///
name(mlogit, replace)

* count models

twoway function y = poissonp(x, 2), /// 
range(0 10) ///
lcolor("117 152 141") /// Rackham green
title("Poisson Distributed" "Variable") ///
xtitle("Count") ytitle("Probability") ///
name(poisson0, replace)

twoway function y = .01 * exp(x), ///
range(0 5) ///
lcolor("165 165 8") /// Wave Field green
title("Poisson Regression") ///
ytitle("Count") ///
name(poisson1, replace)

graph combine poisson0 poisson1, ///
title("Count Regression") ///
scheme(michigan) ///
name(poisson, replace)

* event history and survival analysis

twoway (function y = -1 * x^2, range(0 10) lcolor("0 178 169")) /// Taubman teal
(function y =  -.5 *x^2, range(0 10) lcolor("47 101 167")), /// Arboretum blue
title("Survival Function") ///
xtitle("Time") ytitle("Survival Curve") ylabel(none) ///
legend(order(1 "Group 1" 2 "Group 2")) ///
name(survival, replace)

twoway (function y =  x^2, range(0 10) lcolor("0 178 169")) /// Taubman teal
(function y =  .5 *x^2, range(0 10) lcolor("47 101 167")), /// Arboretum blue
title("Hazard Function") ///
xtitle("Time") ytitle("Hazard") ylabel(none) ///
legend(order(1 "Group 1" 2 "Group 2")) ///
name(hazard, replace)

graph combine survival hazard, ///
title("Event History Analysis") ///
subtitle("What is the hazard of the outcome over the course of time?") ///
rows(2) ///
scheme(michigan) ///
name(eventhistory, replace)

* overall

* v1

graph combine logit ologit mlogit poisson eventhistory, ///
rows(2) iscale(.5)  ///
/* title("Models Discussed In This Course") */ ///
scheme(michigan) ///
name(overall, replace)

graph export "categorical-overview.png", replace

* v2

// twoway function y = x, ///
// lcolor(none) ///
// xtitle("") ytitle("") ///
// xlab(none) ylab(none) /// 
// yscale(noline) xscale(noline) ///
// name(blank, replace)
//
// graph combine logit ologit, rows(1) name(top, replace) iscale(.5)
//
// graph combine mlogit poisson, rows(1) name(middle, replace) iscale(.5)
//
// graph combine eventhistory blank, rows(1) name(bottom, replace) iscale(.5)
//
// graph combine top middle bottom, rows(3) ///
// title("Models Discussed In This Course") ///
// scheme(michigan) ///
// name(overall, replace)




