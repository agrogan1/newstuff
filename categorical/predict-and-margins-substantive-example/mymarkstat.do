* render with markstat

clear all

cd "/Users/agrogan/Desktop/newstuff/categorical/predict-and-margins-substantive-example"

doedit "predict-and-margins-subtantive-example.stmd"

markstat using "predict-and-margins-subtantive-example.stmd", mathjax // HTML

graph close _all

markstat using "predict-and-margins-subtantive-example.stmd", pdf // PDF

graph close _all







