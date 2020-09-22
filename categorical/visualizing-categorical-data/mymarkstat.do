* render with markstat

clear all

cd "/Users/agrogan/Desktop/newstuff/categorical/visualizing-categorical-data"

doedit "visualizing-categorical-data.stmd"

markstat using "visualizing-categorical-data.stmd", mathjax // HTML

graph close _all

markstat using "visualizing-categorical-data.stmd", pdf // PDF

graph close _all




