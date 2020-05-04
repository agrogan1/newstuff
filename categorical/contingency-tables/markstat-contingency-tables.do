* contingency tables

cd "/Users/agrogan/Desktop/newstuff/categorical/contingency-tables"

doedit contingency-tables.stmd

* doedit stata.sty

markstat using contingency-tables.stmd, mathjax // HTML

* markstat using contingency-tables.stmd, slides(santiago+) // Slides

markstat using contingency-tables.stmd, pdf // PDF

markstat using contingency-tables.stmd, docx // Word

graph close _all

* pandoc

* cd /Applications/RStudio.app/Contents/MacOS/pandoc

* ./pandoc -s --webtex -i -t slidy --css "../UMslidy.css" "/Users/agrogan/Desktop/newstuff/categorical/contingency-tables/contingency-tables.html" -o "/Users/agrogan/Desktop/newstuff/categorical/contingency-tables/contingency-tables-slidy.html" 
