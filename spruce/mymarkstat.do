* render document using markstat

clear all

* change to correct directory

cd "/Users/agrogan/Desktop/newstuff/spruce"

* open *.stmd file

doedit "spruce.stmd"

doedit "spruce.bib"

* doedit "UMslidy.css"

* render in different formats

markstat using "spruce.stmd", mathjax // HTML

graph close _all

* markstat using "spruce.stmd", slides(santiago+) // slides

* graph close _all

markstat using "spruce.stmd", docx // Word

graph close _all

markstat using "spruce.stmd", pdf // PDF

graph close _all

* pandoc

! /Applications/RStudio.app/Contents/MacOS/pandoc/pandoc -s --webtex -i -t slidy --css UMslidy.css "/Users/agrogan/Desktop/newstuff/spruce/spruce.html" -o "/Users/agrogan/Desktop/newstuff/spruce/spruce-slidy.html" 




