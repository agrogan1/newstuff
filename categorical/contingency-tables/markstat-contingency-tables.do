* contingency tables

clear all

cd "/Users/agrogan/Desktop/Github/newstuff/categorical/contingency-tables" // Mac

doedit contingency-tables.stmd

* doedit stata.sty

markstat using contingency-tables.stmd, mathjax // HTML

graph close _all

* markstat using contingency-tables.stmd, mathjax slides(santiago+) // Slides

* graph close _all

markstat using contingency-tables.stmd, pdf // PDF

graph close _all

* markstat using contingency-tables.stmd, beamer keep(tex) // Beamer

* graph close _all

markstat using contingency-tables.stmd, docx // Word

graph close _all

* pandoc

* slidy 

! /Applications/quarto/bin/tools/pandoc -s --mathjax -i -t slidy --css "../UMslidy.css" "/Users/agrogan/Desktop/Github/newstuff/categorical/contingency-tables/contingency-tables.html" -o "/Users/agrogan/Desktop/Github/newstuff/categorical/contingency-tables/contingency-tables-slidy.html" 

doedit "../MathJax-CDN.txt"

doedit "contingency-tables-slidy.html"


