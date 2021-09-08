capture log close
log using "contingency-tables", smcl replace
//_1
display c(current_date)
//_2
clear all
//_3
set seed 3846
//_4
label define nickel ///
1 "heads for nickel" /// 
0 "tails for nickel" // define value label
//_5
label define quarter /// 
1 "heads for quarter" /// 
0 "tails for quarter" // define value label
//_6
set obs 1000 // 1000 observations
//_7
* curiously it takes around 1000 obs for the proportions
* below to "take hold"
//_8
generate nickel = rbinomial(1, .75) // unfair nickel
//_9
generate quarter = rbinomial(1, .5) // fair quarter
//_10
label values nickel nickel // assign value label
//_11
label values quarter quarter // assign value label
//_12
graph bar, over(nickel) scheme(burd) title(Nickel) name(nickel)
//_13
graph bar, over(quarter) scheme(burd) title(Quarter) name(quarter)
//_14
graph combine nickel quarter, title(Nickel And Quarter) scheme(burd)
//_15
graph export unhelpfulgraph.png, width(500) replace
//_16
tabulate nickel quarter, row col
//_17
* ssc install spineplot // mosaicplots (spineplots)
//_18
* ssc install scheme-burd, replace // BuRd graph scheme
//_19
spineplot nickel quarter, scheme(burd)
//_20
graph export nickel-quarter.png, width(500) replace
//_21
graph bar, over(quarter) over(nickel) scheme(burd)
//_22
graph export nickel-quarter-bar1.png, width(500) replace
//_23
graph bar, over(quarter) over(nickel) scheme(burd) asyvars
//_24
graph export nickel-quarter-bar2.png, width(500) replace
//_25
graph hbar, over(quarter) over(nickel) scheme(burd) asyvars
//_26
graph export nickel-quarter-bar3.png, width(500) replace
//_27
clear all
//_28
matrix input FrenchSkiiers = (31, 109 \ 17, 122)
//_29
matrix rownames FrenchSkiiers = Placebo AscorbicAcid
//_30
matrix colnames FrenchSkiiers = Cold NoCold
//_31
matrix list FrenchSkiiers
//_32
svmat FrenchSkiiers, name(count)
//_33
list
//_34
use "FrenchSkiiers.dta", clear
//_35
list // list the data
//_36
spineplot Tx Outcome, scheme(burd)
//_37
graph export FrenchSkiiers1.png, width(500) replace
//_38
spineplot Outcome Tx [fweight=Count], scheme(burd) // order matters to interpretability
//_39
graph export FrenchSkiiers2.png, width(500) replace
//_40
tabulate Tx Outcome [fweight = Count], cell row col
//_41
display 6.09 / 49.82
//_42
display 17/139
//_43
tabulate Tx Outcome [fweight = Count]
//_44
scalar N = 31 + 109 + 17 + 122
//_45
scalar A = ((31 + 17)*(31 + 109)) / N // expected count
//_46
scalar B = ((31 + 109)*(109 + 122)) / N // expected count
//_47
scalar C = ((31 + 17) * (17 + 122)) / N // expected count
//_48
scalar D = ((17 + 122) * (109 + 122)) / N // expected count
//_49
matrix FS = (A, B \ C, D) // matrix of expected values
//_50
matrix rownames FS = Placebo AscorbicAcid // rownames
//_51
matrix colnames FS = Cold NoCold // column names
//_52
matrix list FS
//_53
scalar chisquare = (31 - 24.086022)^2 / 24.086022 + /// 
(109 - 115.91398)^2 / 115.91398 + ///
(17 - 23.913978)^2 / 23.913978 + /// 
(122 - 115.08602)^2 / 115.08602
//_54
scalar list chisquare
//_55
use "FrenchSkiiers.dta", clear
//_56
tabulate Tx Outcome [fweight = Count], row col chi2
//_57
tabulate Outcome Tx [fweight = Count]
//_58
tabulate Outcome Tx [fweight = Count], col
//_59
display 31/140
//_60
display 17/139
//_61
display (17/139) / (31/140)
//_62
csi 17 31 122 109 // also has an intuitive dialog box
//_63
tabulate Tx Outcome [fweight = Count]
//_64
display (17 * 109)/(122 * 31)
//_65
csi 17 31 122 109, or // also has an intuitive dialog box
//_^
log close
