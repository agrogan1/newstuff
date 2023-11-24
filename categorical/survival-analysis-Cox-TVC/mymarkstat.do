**************************************************
* Cox Time Varying Covariates
**************************************************

clear all

cd "/Users/agrogan/Desktop/newstuff/categorical/survival-analysis-Cox-TVC"

* edit and render

doedit "survival-analysis-Cox-TVC.stmd"

markstat using "survival-analysis-Cox-TVC.stmd", mathjax // HTML

graph close _all

markstat using "survival-analysis-Cox-TVC.stmd", pdf // PDF

graph close _all

