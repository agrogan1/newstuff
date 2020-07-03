****************************************
* causal modeling with GSS data
****************************************

***************
* setup
***************

clear all

cd "/Users/agrogan/Desktop/newstuff/causal-modeling"

* open log

log using "causal-modeling.smcl", replace

*********************************************
* causal modeling with GSS data
* using multiple causal modeling approaches
*********************************************

* get data

use "/Users/agrogan/Box Sync/DATA WAREHOUSE/General Social Survey Panel Data/GSS_panel2010w123_R6 - stata.dta", clear

* id variable

generate ID = id_1

* keep only relevant variables 

keep ID satjob_? educ_? race_? incom16_?

* describe data

describe

* codebook for selected variable(s)

codebook satjob_3

*********************************************
* analyses relying on wide data
*********************************************

* correlation

pwcorr satjob_3 educ_3, sig

* regression with 1 IV

regress satjob_3 educ_3

* regression with multiple IV's

regress satjob_3 educ_3 i.race_3 incom16_3 

* propensity score 

* data wrangling

generate twelve_years_3 = educ_3 >= 12 // 12 or more years of education

generate twelve_years_2 = educ_2 >= 12 // 12 or more years of education

generate twelve_years_1 = educ_1 >= 12 // 12 or more years of education

* propensity score analysis

teffects psmatch (satjob_3) (twelve_years_3 incom16_3 i.race_3)

*********************************************
* analyses relying on long data
*********************************************

* reshape the data

reshape long satjob_ educ_ incom16_ race_, i(ID) j(wave)

* multilevel model

mixed satjob_ wave educ_ incom16_ i.race_ || ID: 

* fixed effects regression

xtreg satjob_ wave educ_ incom16_ i.race_, i(ID) fe

* "hybrid" model


* close log

log close _all

* translate to PDF

translate "causal-modeling.smcl" ///
"causal-modeling.pdf", ///
replace 




