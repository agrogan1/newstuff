* compare event history / survival analysis with multilevel logistic

clear all

cd "/Users/agrogan/Desktop/GitHub/newstuff/categorical/survival-analysis-and-event-history/"

use "event-history-multiple-records.dta"

codebook event // get coding of event variable

* survival analysis / event history

stset t, failure(event == 2) id(id) // stset

stcox x // Cox regression

est store stcox // store estimates

* multilevel logistic regression

generate event10 = event == 2 // generate event 1/0 variable

melogit event10 t x || id: , or

est store melogit // store estimates

* compare results

estimates table stcox melogit, equations(1) star b(%9.3f) eform


