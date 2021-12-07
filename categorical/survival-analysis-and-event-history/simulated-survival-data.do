capture log close
log using "simulated-survival-data", smcl replace
//_1
display c(current_date)
//_2
clear all
//_3
use "simulated-survival-data.dta", clear
//_4
list
//_5
* initialize to longest time
//_6
* censored observations will have the value of the longest possible event time
//_7
generate event_time = 3
//_8
* change event time to 2 if status2 == 2
* change event time to 1 if status1 == 1
//_9
* notice that I am doing this in *reverse* order
* to capture the earliest event time
//_10
replace event_time = 2 if status2 == 1 // event time is 2 if status 2 is 1
//_11
replace event_time = 1 if status1 == 1 // event time is 1 if status 1 is 1
//_12
* failure becomes 1 for those 
* for whom event occurred at some timepoint
//_13
generate failure = 0 // initialize
//_14
* change failure to 1 if any status variable == 1
//_15
replace failure = 1 if status1 == 1 | status2 == 1 | status3 == 1 
//_16
list, abbreviate(10) // list out the data
//_17
stset event_time, failure(failure == 1)
//_18
sts graph, scheme(michigan)
//_19
graph export simulated-survival-data.png, width(1000) replace
//_^
log close
