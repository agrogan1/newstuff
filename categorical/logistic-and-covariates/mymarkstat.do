* render with markstat

clear all

cd "/Users/agrogan/Desktop/newstuff/categorical/logistic-and-covariates"

doedit "logistic-and-covariates.stmd"

markstat using "logistic-and-covariates.stmd", mathjax // HTML

graph close _all

markstat using "logistic-and-covariates.stmd", nodo pdf // PDF

graph close _all







