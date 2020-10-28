* markstat for multilevel

clear all

cd "/Users/agrogan/Desktop/newstuff/categorical/multilevel"

doedit "multilevel.stmd"

markstat using "multilevel.stmd", mathjax // HTML

graph close _all

markstat using "multilevel.stmd", pdf // PDF

graph close _all

* pandoc

! /Applications/RStudio.app/Contents/MacOS/pandoc/pandoc -s --mathjax -i -t slidy --css "../OsloMetslidy.css" --slide-level=2 "/Users/agrogan/Desktop/newstuff/categorical/multilevel/multilevel.html" -o "/Users/agrogan/Desktop/newstuff/categorical/multilevel/multilevel-slidy.html" 

doedit "../MathJax-CDN.txt"

doedit "multilevel-slidy.html"
