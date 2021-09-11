* render with markstat

clear all

cd "C:\Users\agrogan\Desktop\GitHub\newstuff\categorical\simpsons-paradox-hospital-data" // Windows

cd "/Users/agrogan/Desktop/Github/newstuff/categorical/simpsons-paradox-hospital-data" // Mac

doedit "simpsons-paradox-hospital-data.stmd"

markstat using "simpsons-paradox-hospital-data.stmd", mathjax // HTML

graph close _all

markstat using "simpsons-paradox-hospital-data.stmd", pdf // PDF

graph close _all




