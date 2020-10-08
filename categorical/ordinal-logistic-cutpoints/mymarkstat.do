* markstat

clear all

cd "/Users/agrogan/Desktop/newstuff/categorical/ordinal-logistic-cutpoints"

doedit "ordinal-logistic-cutpoints.stmd"

markstat using "ordinal-logistic-cutpoints.stmd", mathjax // HTML

graph close _all

markstat using "ordinal-logistic-cutpoints.stmd", pdf // PDF

graph close _all
