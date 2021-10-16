*************************
* count regression
*************************

clear all

cd "/Users/agrogan/Desktop/Github/newstuff/categorical/count-regression"

doedit count-regression.stmd

* doedit stata.sty

markstat using count-regression.stmd, mathjax // HTML

graph close _all

* markstat using count-regression.stmd, mathjax slides(santiago+) // Slides

* graph close _all

* markstat using count-regression.stmd, pdf // PDF

* graph close _all

* markstat using count-regression.stmd, beamer keep(tex md) // Beamer

* graph close _all

markstat using count-regression.stmd, docx // Word

graph close _all

* pandoc

! /Applications/RStudio.app/Contents/MacOS/pandoc/pandoc -s --mathjax -i -t slidy --slide-level=2 --css "../UMslidy.css"  "/Users/agrogan/Desktop/Github/newstuff/categorical/count-regression/count-regression.html" -o "/Users/agrogan/Desktop/Github/newstuff/categorical/count-regression/count-regression-slidy.html" 

doedit "../MathJax-CDN.txt"

doedit "count-regression-slidy.html"


