**************************************************
* Cox Time Varying Covariates
**************************************************

clear all

cd "..." // Windows

cd "/Users/agrogan/Desktop/newstuff/categorical/survival-more-on-Cox-model" // Mac

* edit 

doedit "survival-more-on-Cox-model.stmd"

* render

* HTML

markstat using "survival-more-on-Cox-model.stmd", mathjax // HTML

graph close _all

* PDF

erase "survival-more-on-Cox-model.pdf"

markstat using "survival-more-on-Cox-model.stmd", pdf // PDF

graph close _all

erase "survival-more-on-Cox-model.tex"

erase "survival-more-on-Cox-model.pdx"

erase "survival-more-on-Cox-model.synctex.gz"

erase "survival-more-on-Cox-model.md"


