* contingency tables

cd "/Users/agrogan/Desktop/newstuff/categorical/contingency-tables"

doedit contingency-tables.stmd

* doedit stata.sty

markstat using contingency-tables.stmd, mathjax // HTML

graph close _all

markstat using contingency-tables.stmd, mathjax slides(santiago+) // Slides

graph close _all

markstat using contingency-tables.stmd, pdf // PDF

graph close _all

markstat using contingency-tables.stmd, docx // Word

graph close _all

* pandoc

* cd /Applications/RStudio.app/Contents/MacOS/pandoc

* ./pandoc -s --mathjax -i -t slidy --css "../UMslidy.css" "/Users/agrogan/Desktop/newstuff/categorical/contingency-tables/contingency-tables.html" -o "/Users/agrogan/Desktop/newstuff/categorical/contingency-tables/contingency-tables-slidy.html" 
