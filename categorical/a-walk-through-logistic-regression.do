* A "Walk" Through Logistic Regression Using Simulated Data

use http://www.stata-press.com/data/r15/margex, clear  // use simulated data

logit outcome i.sex i.group age, or // logit with odds ratios

margins sex group // margins for sex and group

margins sex#group // margins for combinations of sex and group

marginsplot, scheme(s1color) // visualize predicted margins
