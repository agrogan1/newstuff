* Bayes

clear all

cd "/Users/agrogan/Desktop/newstuff/categorical/Bayes"

doedit "Bayes.stmd"

markstat using "Bayes.stmd", mathjax // HTML

graph close _all

markstat using "Bayes.stmd", pdf // PDF

graph close _all

* pandoc

! /Applications/RStudio.app/Contents/MacOS/pandoc/pandoc -s --webtex -i -t slidy --slide-level=2 --css ../UNslidy.css "/Users/agrogan/Desktop/newstuff/categorical/Bayes/Bayes.html" -o "/Users/agrogan/Desktop/newstuff/categorical/Bayes/Bayes-slidy.html" 

* doedit "../UNslidy.css"

doedit "../MathJax-CDN.txt"

doedit "Bayes-slidy.html"




