* markstat for Comparing Models

clear all

cd "/Users/agrogan/Desktop/Github/newstuff/categorical/comparing-models" // bilingual

doedit "comparing-models.stmd"

markstat using "comparing-models.stmd", mathjax // HTML

markstat using "comparing-models.stmd", docx // Word

markstat using "comparing-models.stmd", pdf // PDF

* slidy 

! /Applications/RStudio.app/Contents/MacOS/pandoc/pandoc -s --mathjax -i -t slidy --css "../UMslidy.css" "/Users/agrogan/Desktop/Github/newstuff/categorical/comparing-models/comparing-models.html" -o "/Users/agrogan/Desktop/Github/newstuff/categorical/comparing-models/comparing-models-slidy.html" 

doedit "../MathJax-CDN.txt"

doedit "comparing-models-slidy.html"
