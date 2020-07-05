* render markdown

clear all

cd "/Users/agrogan/Desktop/newstuff/causal-modeling"

doedit "causal-modeling.stmd"

markstat using "causal-modeling.stmd", mathjax // HTML

graph close _all

markstat using "causal-modeling.stmd", pdf // PDF

graph close _all

* slidy

! /Applications/RStudio.app/Contents/MacOS/pandoc/pandoc -s --webtex -i -t slidy --slide-level=2 --css UNslidy.css "/Users/agrogan/Desktop/newstuff/causal-modeling/causal-modeling.html" -o "/Users/agrogan/Desktop/newstuff/causal-modeling/causal-modeling-slidy.html" 

doedit "UNslidy.css"

doedit "MathJax-CDN.txt"

doedit "causal-modeling-slidy.html"




