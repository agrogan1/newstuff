capture log close
log using "logistic-interactions-2", smcl replace
//_1
display c(current_date)
//_2
display c(current_time)
//_3
clear all
//_4
graph close _all
//_5
use http://www.stata-press.com/data/r15/margex, clear
//_6
describe
//_7
logit outcome sex##c.age i.group
//_8
margins sex, at(age = (20 30 40 50 60))
//_9
marginsplot, ///
scheme(michigan) /// michigan graph scheme
plotopts(msize(vlarge)) /// larger plotting symbols
plot1opts(lcolor(navy)) /// line for first group is navy
plot2opts(lcolor(gold)) // line for second group is gold
//_10
graph export mymarginsplot.png, width(1000) replace
//_11
margins sex, at(age = (20 30 40 50 60)) post
//_12
margins, coeflegend
//_13
test _b[1bn._at#0bn.sex] = _b[1bn._at#1.sex] // male and female at age 20
//_14
test _b[4._at#0bn.sex] = _b[4._at#1.sex] // male and female at age 50
//_15
test _b[5._at#0bn.sex] =  _b[5._at#1.sex] // male and female at age 60
//_16
test _b[1bn._at#1.sex] - _b[1bn._at#0bn.sex] = _b[5._at#1.sex] - _b[5._at#0bn.sex] // test equivalence of the differences
//_17
test _b[1bn._at#1.sex] - _b[1bn._at#0bn.sex] = _b[4._at#1.sex] - _b[4._at#0bn.sex] // test equivalence of the differences
//_^
log close
