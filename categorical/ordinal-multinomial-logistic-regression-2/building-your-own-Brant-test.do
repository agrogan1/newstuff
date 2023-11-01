* building your own Brant test when `brant` doesn't work

* builds upon https://agrogan1.github.io/newstuff/categorical/ordinal-multinomial-logistic-regression-2/ordinal-multinomial-logistic-regression-2.html#ordinal-logistic-regression

* builds upon (hopefully correctly) ideas in https://www3.nd.edu/~rwilliam/stats3/Ologit01.pdf

* Say we have a 3 category outcome variable.
* We want to understand if `ologit outcome x` produces the same results 
* as we would get if we ran `logit outcome_gt_0 x` (outcome 0 vs. higher) 
* and `logit outcome_gt_1 x` (outcome 1 vs. higher)

/*
. codebook outcome_group

---------------------------------------------------------------------------------------------------------------------------
outcome_group                                                                                                   (unlabeled)
---------------------------------------------------------------------------------------------------------------------------

                  Type: Numeric (float)
                 Label: outcome_group

                 Range: [0,2]                         Units: 1
         Unique values: 3                         Missing .: 0/3,000

            Tabulation: Freq.   Numeric  Label
                        1,000         0  low
                        1,000         1  medium
                        1,000         2  high
*/


* for this example, we have k=3 categories, so we need 2 (k-1) new outcome variables

* create two new outcome variables

generate outcome_group_gt_0 = outcome_group > 0 // outcome is greater than 0

generate outcome_group_gt_1 = outcome_group > 1 // outcome is greater than 1

* run the binary logits and store the estimates

logit outcome_group_gt_0 physical_punishment warmth i.group // logit outcome_group > 0

est store m1 // store the estimates

logit outcome_group_gt_1 physical_punishment warmth i.group // logit outcome_group > 1

est store m2 // store the estimates

suest m1 m2  // use suest: Seemingly Unrelated ESTimates

test [#1]physical_punishment == [#2]physical_punishment // test coefficients from one equation against the other

test [#1]warmth == [#2]warmth // test coefficients from one equation against the other
