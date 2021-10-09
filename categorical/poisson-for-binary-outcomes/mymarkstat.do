**************************************************
* Poisson for Binary Outcomes
**************************************************

clear all

cd "C:\Users\agrogan\Desktop\GitHub\newstuff\categorical\poisson-for-binary-outcomes" // Windows

cd "..." // Mac

* edit 

doedit "poisson-for-binary-outcomes.stmd"

* render

* HTML

markstat using "poisson-for-binary-outcomes.stmd", mathjax // HTML

graph close _all

* PDF

markstat using "poisson-for-binary-outcomes.stmd", pdf // PDF

graph close _all






