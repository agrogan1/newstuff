* Event History Analysis With Roman Emperor's Data

clear all

import delimited "https://raw.githubusercontent.com/agrogan1/newstuff/master/categorical/survival-analysis-and-event-history/emperors.csv"

* we can't use the date() function 
* because it does not work
* with dates prior to 100AD

* generate birthdate = date(birth, "YMD")

* generate deathdate = date(death, "YMD")

generate birthyear = real(substr(birth, 1, 4)) // convert first 4 characters to real number

generate deathyear = real(substr(death, 1, 4)) // convert first 4 characters to real number

* browse name name_full birth birthyear death deathyear

generate age = deathyear - birthyear

* need to recalculate age for those born in BCE

encode cause, generate(causeNUMERIC) // numeric version of cause of death

codebook causeNUMERIC // show values of causeNUMERIC

stset age // stset the data

stcox ib5.causeNUMERIC // Cox model

stcurve, survival at(causeNUMERIC=(1(1)7)) ///
scheme(michigan) // basic survival curve by causeNUMERIC

stcurve, survival ///
at(causeNUMERIC=(1(1)7)) ///
caption("Roman Emperors Data") ///
legend(order(1 "Assasination" 2 "Captivity" 3 "Died in Battle" /// 
4 "Execution" 5 "Natural Causes" 6 "Suicide" 7 "Unknown")) ///
scheme(michigan) // more nicely formatted survival curve






