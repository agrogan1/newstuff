*************************
* count regression
*************************

cd "/Users/agrogan/Desktop/newstuff/categorical/review-stats-intro-stata"

doedit review-stats-intro-stata.stmd

* doedit stata.sty

markstat using review-stats-intro-stata.stmd, mathjax // HTML

graph close _all

* markstat using review-stats-intro-stata.stmd, mathjax slides(santiago+) // Slides

* graph close _all

markstat using review-stats-intro-stata.stmd, pdf // PDF

graph close _all

* markstat using review-stats-intro-stata.stmd, beamer keep(tex md) // Beamer

* graph close _all

* markstat using review-stats-intro-stata.stmd, docx // Word

* graph close _all

* pandoc

! /Applications/RStudio.app/Contents/MacOS/pandoc/pandoc -s --mathjax -i -t slidy --css "../UNICEFslidy.css"  "/Users/agrogan/Desktop/newstuff/categorical/review-stats-intro-stata/review-stats-intro-stata.html" -o "/Users/agrogan/Desktop/newstuff/categorical/review-stats-intro-stata/review-stats-intro-stata-slidy.html" 

* cd /Applications/RStudio.app/Contents/MacOS/pandoc

* ./pandoc -s --mathjax -i -t slidy --css "../UNICEFslidy.css"  "/Users/agrogan/Desktop/newstuff/categorical/review-stats-intro-stata/review-stats-intro-stata.html" -o "/Users/agrogan/Desktop/newstuff/categorical/review-stats-intro-stata/review-stats-intro-stata-slidy.html" 


