* render with markstat

clear all

cd "/Users/agrogan/Desktop/newstuff/categorical/predict-and-margins"

doedit "predict-and-margins.stmd"

markstat using "predict-and-margins.stmd", mathjax // HTML

graph close _all

markstat using "predict-and-margins.stmd", pdf // PDF

graph close _all







