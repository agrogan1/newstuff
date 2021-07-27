* render document using markstat

clear all

* change to correct directory

cd "/Users/agrogan/Desktop/GitHub/newstuff/spruce" // Mac

* open *.stmd file

doedit "spruce.stmd"

* doedit "spruce.bib"

* doedit "UMslidy.css"

* render in different formats

markstat using "spruce.stmd", mathjax // HTML

graph close _all

* markstat using "spruce.stmd", slides(santiago+) // slides

* graph close _all

markstat using "spruce.stmd", docx // Word

graph close _all

* markstat using "spruce.stmd", pdf // PDF

* graph close _all

* pandoc

! /Applications/RStudio.app/Contents/MacOS/pandoc/pandoc -s --webtex -i -t slidy --slide-level=3 --css spruceslidy.css "/Users/agrogan/Desktop/GitHub/newstuff/spruce/spruce.html" -o "/Users/agrogan/Desktop/GitHub/newstuff/spruce/spruce-slidy.html"

doedit "MathJax-CDN.txt"

doedit "spruce-slidy.html"


