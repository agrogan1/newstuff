* make ACES file for analysis

clear all

cd "/Users/agrogan/Desktop/newstuff/categorical/predict-and-margins"

use "/Users/agrogan/Box Sync/DATA WAREHOUSE/nsch_2018_topical_Stata/nsch_2018_topical.dta"

recode k2q32b (1=1)(2=0), generate(depress) // current depression recode

keep sc_sex sc_race_r sc_racer ace* higrade depress // keep selected variables

recode ace1 (1=0)(2/4=1), generate(ace1R) // recode ace1

recode ace3 ace4 ace5 ace6 ace7 ace8 ace9 ace10 (1=1)(2=0), ///
generate(ace3R ace4R ace5R ace6R ace7R ace8R ace9R ace10R) // recode other aces

save "NSCH_ACES.dta", replace
