* Logistic Interactions 2

graph close _all

use http://www.stata-press.com/data/r15/margex, clear

* taking example in slightly different direction

logit outcome sex##c.age group

margins sex, at(age = (20 30 40 50 60))

marginsplot, noci 

margins sex, at(age = (20 30 40 50 60)) post

margins, coeflegend

test _b[1bn._at#0bn.sex] = _b[1bn._at#1.sex]

test  _b[5._at#0bn.sex] =  _b[5._at#1.sex]

/*
predict yhat

twoway (scatter yhat age if sex == 1 & group == 1, msymbol(T)) ///
(scatter yhat age if sex == 1 & group == 2, msymbol(T)) ///
(scatter yhat age if sex == 1 & group == 3, msymbol(T)) ///
(scatter yhat age if sex == 0 & group == 1) ///
(scatter yhat age if sex == 0 & group == 2) ///
(scatter yhat age if sex == 0 & group == 3), ///
legend(order(1 "Female Group 1" 2 "Female Group 2" 3 "Female Group3" ///
4 "Male Group 1" 5 "Male Group 2" 6 "Male Group 3"))

*/

