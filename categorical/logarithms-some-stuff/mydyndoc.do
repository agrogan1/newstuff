* render file using dyndoc

cd "C:\Users\agrogan\Desktop\some-stuff-about-logarithms"

doedit "logarithms-some-stuff.txt" // edit

dyndoc "logarithms-some-stuff.txt", replace // HTML

graph close _all // close graphs

// dyndoc "some-stuff-about-logarithms.txt", docx replace // Word
//
// html2docx "some-stuff-about-logarithms.html", replace
//
// docx2pdf "some-stuff-about-logarithms.docx", replace

! del *.svg // cleanup