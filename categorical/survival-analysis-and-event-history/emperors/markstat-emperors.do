clear all

cd "/Users/agrogan/Desktop/Github/newstuff/categorical/survival-analysis-and-event-history/emperors"

* MAIN FILE

doedit "emperors.stmd"

markstat using "emperors.stmd", mathjax // HTML

graph close _all

markstat using "emperors.stmd", docx // MS Word

graph close _all

markstat using "emperors.stmd", pdf // PDF

graph close _all
