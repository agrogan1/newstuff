*************************
* logistic regression
*************************

cd "/Users/agrogan/Desktop/newstuff/categorical/logistic-regression"

doedit logistic-regression.stmd

* doedit stata.sty

markstat using logistic-regression.stmd, mathjax // HTML

graph close _all

markstat using logistic-regression.stmd, mathjax slides(santiago+) // Slides

graph close _all

markstat using logistic-regression.stmd, pdf // PDF

graph close _all

markstat using logistic-regression.stmd, beamer keep(tex md) // Beamer

graph close _all

markstat using logistic-regression.stmd, docx // Word

graph close _all

*************************
* complete separation
*************************

markstat using complete-separation.stmd, mathjax // HTML

graph close _all

* pandoc

* cd /Applications/RStudio.app/Contents/MacOS/pandoc

* ./pandoc -s --mathjax -i -t slidy --css "../UMslidy.css" "/Users/agrogan/Desktop/newstuff/categorical/logistic-regression/logistic-regression.md" -o "/Users/agrogan/Desktop/newstuff/categorical/logistic-regression/logistic-regression-slidy.html" 

* ./pandoc -t beamer --pdf-engine=xelatex "/Users/agrogan/Desktop/newstuff/categorical/logistic-regression/logistic-regression.html" -o "/Users/agrogan/Desktop/newstuff/categorical/logistic-regression/logistic-regression-beamer.pdf"

