* render with markstat

clear all

cd "/Users/agrogan/Desktop/GitHub/newstuff/categorical/visualizing-categorical-data" // bilingual :-)

doedit "visualizing-categorical-data.stmd"

markstat using "visualizing-categorical-data.stmd", mathjax // HTML

graph close _all

// markstat using "visualizing-categorical-data.stmd", docx // MS Word
//
// graph close _all

markstat using "visualizing-categorical-data.stmd", pdf // PDF

graph close _all




