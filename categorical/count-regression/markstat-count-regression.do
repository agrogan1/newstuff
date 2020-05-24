*************************
* count regression
*************************

cd "/Users/agrogan/Desktop/newstuff/categorical/count-regression"

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

* cd /Applications/RStudio.app/Contents/MacOS/pandoc

* ./pandoc -s --mathjax -i -t slidy --css "../UMslidy.css"  "/Users/agrogan/Desktop/newstuff/categorical/count-regression/count-regression.html" -o "/Users/agrogan/Desktop/newstuff/categorical/count-regression/count-regression-slidy.html" 


