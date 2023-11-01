* building your own Brant test when `brant` doesn't work

* builds upon https://agrogan1.github.io/newstuff/categorical/ordinal-multinomial-logistic-regression-2/ordinal-multinomial-logistic-regression-2.html#ordinal-logistic-regression

* builds upon (hopefully correctly) ideas in https://www3.nd.edu/~rwilliam/stats3/Ologit01.pdf

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