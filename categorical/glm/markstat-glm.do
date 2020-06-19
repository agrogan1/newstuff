**************************************************
* generalized linear model
**************************************************

cd "/Users/agrogan/Desktop/newstuff/categorical/glm"

doedit glm.stmd

* doedit stata.sty

markstat using glm.stmd, mathjax // HTML

graph close _all

* markstat using glm.stmd, mathjax slides(+) // Slides

* graph close _all

markstat using glm.stmd, pdf // PDF

graph close _all

* markstat using glm.stmd, beamer keep(tex md) // Beamer

* graph close _all

* markstat using glm.stmd, docx // Word

* graph close _all



* pandoc

! /Applications/RStudio.app/Contents/MacOS/pandoc/pandoc -s --mathjax -i -t slidy --css "../UMslidy.css" --slide-level=2 "/Users/agrogan/Desktop/newstuff/categorical/glm/glm.html" -o "/Users/agrogan/Desktop/newstuff/categorical/glm/glm-slidy.html" 

doedit "../MathJax-CDN.txt"

doedit "glm-slidy.html"


