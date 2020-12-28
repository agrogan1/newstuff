* render markdown

clear all

cd "/Users/agrogan/Desktop/newstuff/categorical/LPM-and-logistic" 

doedit "LPM-and-logistic.stmd"

markstat using "LPM-and-logistic.stmd", mathjax // HTML

graph close _all

markstat using "LPM-and-logistic.stmd", pdf // PDF

graph close _all







