**************************************************
* SURVIVAL ANALYSIS AND EVENT HISTORY
**************************************************

clear all

cd "/Users/agrogan/Desktop/Github/newstuff/categorical/survival-analysis-and-event-history"

* MAIN FILE

doedit "survival-analysis-and-event-history.stmd"

markstat using "survival-analysis-and-event-history.stmd", mathjax // HTML

graph close _all

markstat using "survival-analysis-and-event-history.stmd", pdf // PDF

graph close _all

* COX PROPORTIONAL HAZARDS MODEL

doedit "Cox-proportional-hazards-model.stmd"

markstat using "Cox-proportional-hazards-model.stmd", mathjax // HTML

graph close _all

markstat using "Cox-proportional-hazards-model.stmd", pdf // PDF

graph close _all

* SIMULATED SURVIVAL DATA

doedit "simulated-survival-data.stmd"

markstat using "simulated-survival-data.stmd", mathjax // HTML

graph close _all

markstat using "simulated-survival-data.stmd", pdf // PDF

graph close _all

* pandoc

! /Applications/RStudio.app/Contents/MacOS/pandoc/pandoc -s --mathjax -i -t slidy --css "../spruceslidy.css" --slide-level=2 "/Users/agrogan/Desktop/Github/newstuff/categorical/survival-analysis-and-event-history/survival-analysis-and-event-history.html" -o "/Users/agrogan/Desktop/Github/newstuff/categorical/survival-analysis-and-event-history/survival-analysis-and-event-history-slidy.html" 

! /Applications/quarto/bin/tools/pandoc -s --mathjax -i -t slidy --css "../spruceslidy.css" --slide-level=2 "/Users/agrogan/Desktop/Github/newstuff/categorical/survival-analysis-and-event-history/Cox-proportional-hazards-model.html" -o "/Users/agrogan/Desktop/Github/newstuff/categorical/survival-analysis-and-event-history/Cox-proportional-hazards-model-slidy.html" 

doedit "../MathJax-CDN.txt"

doedit "survival-analysis-and-event-history-slidy.html"

doedit "Cox-proportional-hazards-model-slidy.html"








