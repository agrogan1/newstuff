---
title: Summary Thoughts on Logistic Regression
---

![](logistic.png)

Dichotomous dependent variables are important to data analysis. Dichotomous dependent variables may represent important outcomes like a diagnosis of a physical disease, physical health problem, or mental health problem. 

Logistic regression is an important tool for predicting dichotomous dependent variables. 

There is some discussion / debate as to whether linear models (OLS) may be appropriate for dichotomous dependent variables—but as the above diagram suggests, [linear models may not have the appropriate functional form to predict a dichotomous dependent variable; may offer predictions of probabilities that are out of range; and may calculate standard errors incorrectly](https://agrogan1.github.io/newstuff/categorical/LPM-and-logistic/LPM-and-logistic.html).

Logistic regression and odds ratios are the most commonly used tools to predict dichotomous outcomes. [Mathematically odds ratios may be relatively straightforward to understand](https://agrogan1.github.io/newstuff/categorical/logistic-regression-equation/logistic-regression-equation.html) (see also [here](https://agrogan.shinyapps.io/exploring_logistic_regression/#section-visualize-a-logistic-regression)) as $e^\beta$ (the exponentiated beta coefficients). Less commonly do we have the visual intuition that [odds ratios are a statement about the *overall shape* of the logistic curve](https://agrogan.shinyapps.io/exploring_logistic_regression/#section-visualize-a-logistic-regression).

As we explore logistic regression, and think about predicted probabilities, we need to realize a few things. First, at larger values, [odds ratios may overstate changes in predicted probabilities](https://agrogan1.github.io/newstuff/categorical/risks-and-odds/risks-and-odds.html) (and may thus overstate our substantive conclusions about risk and protective factors). Second, in a logistic regression, the [change in predicted probability for a given independent variable is different at different values of the independent variable](https://agrogan1.github.io/newstuff/categorical/logistic-regression-and-predicted-probabilities/logistic-regression-and-predicted-probabilities.pdf). Thus, it behooves us to [think more in terms of predicted probabilities when summarizing the conclusions of our logistic regression models](https://agrogan1.github.io/newstuff/categorical/predict-and-margins/predict-and-margins.html). 

Lastly, and this is an advanced topic, we realize from the above discussion that odds ratios may not be the best statements even for the *main effects* in our models. Building upon these intuitions, we come to understand that with regard to *interactions*, odds ratios (or even beta coefficients for the log odds) [may mis-state the nature of interactive relationships in non-linear models](https://agrogan1.github.io/newstuff/categorical/logistic-interactions-2/logistic-interactions-2.html).
