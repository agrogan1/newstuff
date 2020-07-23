**************************************************
* survival analysis and event history
**************************************************

cd "/Users/agrogan/Desktop/newstuff/categorical/survival-analysis-and-event-history"

doedit "survival-analysis-and-event-history.stmd"

* doedit stata.sty

markstat using "survival-analysis-and-event-history.stmd", mathjax // HTML

graph close _all

* markstat using "survival-analysis-and-event-history.stmd", pdf // PDF

markstat using "survival-analysis-and-event-history.stmd", docx

graph close _all

* pandoc

! /Applications/RStudio.app/Contents/MacOS/pandoc/pandoc -s --mathjax -i -t slidy --css "../UMslidy.css" --slide-level=2 "/Users/agrogan/Desktop/newstuff/categorical/survival-analysis-and-event-history/survival-analysis-and-event-history.html" -o "/Users/agrogan/Desktop/newstuff/categorical/survival-analysis-and-event-history/survival-analysis-and-event-history-slidy.html" 

doedit "../MathJax-CDN.txt"

doedit "survival-analysis-and-event-history-slidy.html"


