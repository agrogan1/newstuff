twoway ///
(function y = exp(x)/(1 + exp(x)), range(-10 10) lwidth(thick)) ///
(function y = .5 + .1 * x, range(-10 10)  lwidth(thick)), ///
title("Comparing Linear and Logistic Models") ///
ytitle("Probability") ///
note("In some cases the {bf:red} line and the {bf:blue} line may be {bf:close enough}, but they may not be!") ///
legend(order(1 "If the true relationship in your data looks like this..." ///
2 "... why model it with a curve that looks like this?") pos(6))

graph export "why-logistic.png", as(png) replace
