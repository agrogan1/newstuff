* render document using markstat

clear all

* change to correct directory

cd "/Users/agrogan/Desktop/newstuff/spruce"

* open *.stmd file

doedit "spruce.stmd"

doedit "spruce.bib"

* doedit "UMslidy.css"

* render in different formats

markstat using "spruce.stmd", bundle // HTML

graph close _all

* markstat using "spruce.stmd", slides(santiago+) bundle keep(md)  // slides

* graph close _all

markstat using "spruce.stmd", docx // Word

graph close _all

markstat using "spruce.stmd", pdf // PDF

graph close _all




