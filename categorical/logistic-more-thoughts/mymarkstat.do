* render with markstat

clear all

cd "/Users/agrogan/Desktop/newstuff/categorical/logistic-more-thoughts"

doedit "logistic-more-thoughts.stmd"

markstat using "logistic-more-thoughts.stmd", mathjax // HTML

graph close _all

markstat using "logistic-more-thoughts.stmd", pdf // PDF

graph close _all







