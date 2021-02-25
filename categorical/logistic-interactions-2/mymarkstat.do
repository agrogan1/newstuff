* logistic-interactions-2

cd "/Users/agrogan/Desktop/newstuff/categorical/logistic-interactions-2"

doedit "logistic-interactions-2.stmd"

markstat using "logistic-interactions-2.stmd", mathjax // HTML

graph close _all

markstat using "logistic-interactions-2.stmd", pdf // PDF

graph close _all


* pandoc

* ! /Applications/RStudio.app/Contents/MacOS/pandoc/pandoc -s --mathjax -i -t slidy --css "../UMslidy.css"  "/Users/agrogan/Desktop/newstuff/categorical/logistic-interactions-2/logistic-interactions-2.html" -o "/Users/agrogan/Desktop/newstuff/categorical/logistic-interactions-2/logistic-interactions-2-slidy.html" 

* doedit "../MathJax-CDN.txt"

* doedit "logistic-interactions-2-slidy.html"
