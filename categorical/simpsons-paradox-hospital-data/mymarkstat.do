* render with markstat

clear all

cd "/Users/agrogan/Desktop/newstuff/categorical/simpsons-paradox-hospital-data"

doedit "simpsons-paradox-hospital-data.stmd"

markstat using "simpsons-paradox-hospital-data.stmd", mathjax // HTML

graph close _all

markstat using "simpsons-paradox-hospital-data.stmd", nodo pdf // PDF

graph close _all




