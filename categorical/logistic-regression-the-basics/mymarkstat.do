* render markdown

clear all

cd "/Users/agrogan/Desktop/newstuff/categorical/logistic-regression-the-basics" // Mac

doedit "logistic-regression-the-basics.stmd"

markstat using "logistic-regression-the-basics.stmd", mathjax // HTML

graph close _all

markstat using "logistic-regression-the-basics.stmd", pdf // PDF

graph close _all

markstat using "logistic-regression-the-basics.stmd", docx // MS Word

graph close _all



