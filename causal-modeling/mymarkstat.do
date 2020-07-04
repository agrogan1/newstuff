* render markdown

clear all

cd "/Users/agrogan/Desktop/newstuff/causal-modeling"

doedit "causal-modeling.stmd"

markstat using "causal-modeling.stmd", mathjax // HTML

markstat using "causal-modeling.stmd", pdf // PDF

* slidy

! /Applications/RStudio.app/Contents/MacOS/pandoc/pandoc -s --webtex -i -t slidy --slide-level=2 --css peopleslidy.css "/Users/agrogan/Desktop/newstuff/causal-modeling/causal-modeling.html" -o "/Users/agrogan/Desktop/newstuff/causal-modeling/causal-modeling-slidy.html" 

doedit "peopleslidy.css"

doedit "MathJax-CDN.txt"

doedit "spruce-slidy.html"




