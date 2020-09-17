* render with markstat

clear all

cd "/Users/agrogan/Desktop/newstuff/simpsonsparadox"

doedit "simpsonsparadox.stmd"

markstat using "simpsonsparadox.stmd", mathjax // HTML

graph close _all

markstat using "simpsonsparadox.stmd", nodo pdf // PDF

graph close _all




