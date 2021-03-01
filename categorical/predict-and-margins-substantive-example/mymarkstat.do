* render with markstat

clear all

cd "/Users/agrogan/Desktop/newstuff/categorical/predict-and-margins-substantive-example"

doedit "predict-and-margins-substantive-example.stmd"

markstat using "predict-and-margins-substantive-example.stmd", mathjax // HTML

graph close _all

markstat using "predict-and-margins-substantive-example.stmd", pdf // PDF

graph close _all







