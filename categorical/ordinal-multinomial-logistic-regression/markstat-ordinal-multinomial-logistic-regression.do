**************************************************
* ordinal and multinomial logistic regression
**************************************************

cd "/Users/agrogan/Desktop/GitHub/newstuff/categorical/ordinal-multinomial-logistic-regression"

doedit ordinal-multinomial-logistic-regression.stmd

* render

markstat using ordinal-multinomial-logistic-regression.stmd, mathjax // HTML

graph close _all

* markstat using ordinal-multinomial-logistic-regression.stmd, mathjax slides(santiago+) // Slides

* graph close _all

markstat using ordinal-multinomial-logistic-regression.stmd, pdf // PDF

graph close _all

* markstat using ordinal-multinomial-logistic-regression.stmd, beamer keep(tex md) // Beamer

* graph close _all

* markstat using ordinal-multinomial-logistic-regression.stmd, docx // Word

* graph close _all

* pandoc

! /Applications/quarto/bin/tools/pandoc -s --mathjax -i -t slidy --css "../UMslidy.css" "/Users/agrogan/Desktop/Github/newstuff/categorical/ordinal-multinomial-logistic-regression/ordinal-multinomial-logistic-regression.html" -o "/Users/agrogan/Desktop/Github/newstuff/categorical/ordinal-multinomial-logistic-regression/ordinal-multinomial-logistic-regression-slidy.html" 

doedit "../MathJax-CDN.txt"

doedit "ordinal-multinomial-logistic-regression-slidy.html"

