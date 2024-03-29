*************************
* logistic regression
*************************

cd "/Users/agrogan/Desktop/newstuff/categorical/logistic-regression"

doedit logistic-regression.stmd

* doedit stata.sty

markstat using logistic-regression.stmd, mathjax // HTML

graph close _all

* markstat using logistic-regression.stmd, mathjax slides(santiago+) // Slides

* graph close _all

markstat using logistic-regression.stmd, pdf // PDF

graph close _all

* markstat using logistic-regression.stmd, beamer keep(tex md) // Beamer

* graph close _all

* markstat using logistic-regression.stmd, docx // Word

* graph close _all

*************************
* complete separation
*************************

doedit complete-separation.stmd

markstat using complete-separation.stmd, mathjax // HTML

markstat using complete-separation.stmd, pdf // PDF

graph close _all

* pandoc

! /Applications/RStudio.app/Contents/MacOS/pandoc/pandoc -s --mathjax -i -t slidy --css "../UMslidy.css" "/Users/agrogan/Desktop/newstuff/categorical/logistic-regression/logistic-regression.html" -o "/Users/agrogan/Desktop/newstuff/categorical/logistic-regression/logistic-regression-slidy.html" 

doedit "../MathJax-CDN.txt"

doedit "logistic-regression-slidy.html"



