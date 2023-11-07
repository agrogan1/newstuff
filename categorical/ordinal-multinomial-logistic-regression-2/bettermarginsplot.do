* better, more intuitive??? marginsplots
* builds upon https://agrogan1.github.io/newstuff/categorical/ordinal-multinomial-logistic-regression-2/ordinal-multinomial-logistic-regression-2.html#ordinal-logistic-regression

ologit outcome_group physical_punishment warmth HDI i.group, or cluster(country) // ordinal logit

* save your margins into a NEW data file using the undocumented `,saving` option.

margins, at(warmth = (1(1)7)) saving("mymargins.dta", replace) 

marginsplot // traditional marginsplot

* Use the data on your margins
* NOTE this will REPLACE your current data!!!

use mymargins.dta, clear 

* saved margins have a somewhat non-intuitive structure so you should `browse` the contents
* generally, margins are stored similarly across data files

browse // look at the structure of this data file

* some graph ideas
* should work much of the time

graph bar _margin, by(_predict) over(_at) // bar graph

graph hbar _margin, over(_predict) over(_at) asyvars // horizontal bar graph

graph hbar _margin, over(_predict) over(_at) asyvars stack // horizontal stacked bar graph
