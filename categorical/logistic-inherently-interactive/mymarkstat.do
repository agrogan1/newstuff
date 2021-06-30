**************************************************
* Cox Time Varying Covariates
**************************************************

clear all

cd "C:\Users\agrogan\Desktop\GitHub\newstuff\categorical\logistic-inherently-interactive" // Windows

cd "/Users/agrogan/Desktop/newstuff/categorical/logistic-inherently-interactive" // Mac

* edit 

doedit "logistic-inherently-interactive.stmd"

* render

* HTML

markstat using "logistic-inherently-interactive.stmd", mathjax // HTML

graph close _all

* PDF

erase "logistic-inherently-interactive.pdf"

markstat using "logistic-inherently-interactive.stmd", pdf // PDF

graph close _all

erase "logistic-inherently-interactive.tex"

erase "logistic-inherently-interactive.pdx"

erase "logistic-inherently-interactive.synctex.gz"

erase "logistic-inherently-interactive.md"


