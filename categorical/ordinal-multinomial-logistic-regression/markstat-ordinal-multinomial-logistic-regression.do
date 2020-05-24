**************************************************
* ordinal and multinomial logistic regression
**************************************************

cd "/Users/agrogan/Desktop/newstuff/categorical/ordinal-multinomial-logistic-regression"

doedit ordinal-multinomial-logistic-regression.stmd

* doedit stata.sty

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

* cd /Applications/RStudio.app/Contents/MacOS/pandoc

* ./pandoc -s --mathjax -i -t slidy --css "../UMslidy.css"  "/Users/agrogan/Desktop/newstuff/categorical/ordinal-multinomial-logistic-regression/ordinal-multinomial-logistic-regression.html" -o "/Users/agrogan/Desktop/newstuff/categorical/ordinal-multinomial-logistic-regression/ordinal-multinomial-logistic-regression-slidy.html" 


