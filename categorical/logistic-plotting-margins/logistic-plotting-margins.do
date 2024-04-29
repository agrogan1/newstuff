twoway (line _margin _at) /// line graph for margins
(rcap _ci_lb _ci_ub _at, legend(off)) /// range plot w capped spikes for CIs
if _pw == 1 | _pw == 18 | /// long complicated if statement
_pw ==  31 | _pw == 40 | _pw == 45, /// broken into several lines
title("Difference in Predicted Probabilities Between Male and Female") ///
xtitle("age") ///
ytitle("predicted probability")

