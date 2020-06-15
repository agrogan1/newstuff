*************************
* count regression
*************************

cd "/Users/agrogan/Desktop/newstuff/categorical/count-regression/ACEs"

doedit ACEs.stmd

* doedit stata.sty

markstat using ACEs.stmd, mathjax // HTML

graph close _all

* markstat using ACEs.stmd, mathjax slides(santiago+) // Slides

* graph close _all

markstat using ACEs.stmd, pdf // PDF

graph close _all

* markstat using ACEs.stmd, beamer keep(tex md) // Beamer

* graph close _all

* markstat using ACEs.stmd, docx // Word

* graph close _all


* pandoc

! /Applications/RStudio.app/Contents/MacOS/pandoc/pandoc -s --mathjax -i -t slidy --css "../../UMslidy.css"  "/Users/agrogan/Desktop/newstuff/categorical/count-regression/ACEs/ACEs.html" -o "/Users/agrogan/Desktop/newstuff/categorical/count-regression/ACEs/ACEs-slidy.html" 


