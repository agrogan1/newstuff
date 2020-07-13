logit twelve_years_3 incom16_3 i.race_3 // logit model of propensity score
	
predict pscore // predict propensity score
	
twoway (kdensity pscore if twelve_years_3 == 1, bwidth(.05)) /// 
(kdensity pscore if twelve_years_3 == 0, bwidth(.05)), ///
title("Assessing Balance of Propensity Score") ///
xtitle("Propensity Score") ///
ytitle("Density") /// 
legend(order(1 "12 or more years of education" 2 "< 12 years of education")) ///
scheme(michigan)
