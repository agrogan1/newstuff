% Multiple Approaches to Causal Modeling Using Black Spruce Data
% Andy Grogan-Kaylor
% {{.1}} {{.2}}

# Background 🌲

<style>h1 {color: #00274C;} h2 {color: #2F65A7;} blockquote {border-left: 5px solid #ffcb05; margin: 1.5em 10px; padding: 0.5em 10px;}</style>

> In web slide versions of this material press `b` for bigger text and `s` for smaller text.

Chihara and Hesterberg (2018) provide a data set concerning the growth of Black Spruce Trees. According to these authors: 

> "Black spruce (Picea mariana) is a species of a slow-growing coniferous tree found across the northern part of North America. It is commonly found on wet organic soils. In a study conducted in the 1990s, a biologist interested in factors affecting the growth of the black spruce planted its seedlings on sites located in boreal peatlands in northern Manitoba, Canada (Camil et al. (2010)). The data set Spruce contains a part of the data from the study (Table 1.8). Seventy-two black spruce seedlings were planted in four plots under varying conditions (fertilizer–no fertilizer, competition–no competition), and their heights and diameters were measured over the course of 5 years. The researcher wanted to see whether the addition of fertilizer or the removal of competition from other plants (by weeding) affected the growth of these seedlings."

# The Research Question 🌲

> We are going to consider the *potentially causal* estimate of the effect of *fertilizer* on *tree height at year 5*. Along the way we will give brief attention to the advantages and disadvantages of each approach. Because of the research design, we have strong reasons to consider *fertilizer* as having a causal effect on *tree height* but we will nonetheless explore this question using a variety of statistical models.

> A secondary purpose of this document is to demonstrate that Stata syntax makes it easy to test and compare multiple statistical models because of the uniform Stata syntax, which is almost always: `command variable(s), options`.

# Causality 🌲

![](causality.png){width=25%}

A variable $x$ can only be considered to have *causal* association with $y$ if the following conditions are met (Holland, 1986):

1. $x$ is correlated with $y$.
2. $x$ precedes $y$ in time order.
3. The association between $x$ and $y$ can not be accounted for by any third variable $z$.

Hence, for this particular data, we are exploring: 

![](spruce.png){width=25%}

> What happens to the association of *fertilizer* and *tree height* when we control for possible confounding variables $z$ using various statistical strategies?

(For more interactive exploration of these ideas, see [this demo](https://agrogan.shinyapps.io/causality/?_inputs_&sidebarCollapsed=false&y=%22tree%20height%22&sidebarItemExpanded=null&x=%22fertilizer%22&z=%22alternative%20explanation%22)).

# Setup 🌲

## Get Data


{{3}}


## Dataset Description


{{4}}

    

{{5}}


# Spruce Data And Causal Criteria 🌲

Let's consider in turn each of the criteria for causality.

1. Empirically, *fertilizer* is correlated with *tree height*.


{{6}}


![Scatterplot of Tree Height At Year 5 By Fertilizer Use](myscatter.png){width=25%}

2. From the research design, we know that *fertilizer* comes prior to *tree height at year 5*.
3. We are going to use various statistical strategies--detailed below--to assess whether the association of *fertilizer* and *tree height* can be accounted for by any third variable.

# Analyses 🌲

## t Test

A t test compares the difference between the means of two groups to the standard error of the difference between means.

Formally, $t = \frac{\bar{x}_2 - \bar{x}_1}{s}$ where s is the standard error of the estimate of the mean.

More colloquially, the t test compares the differences between the two groups in standard error units.

A t test does *not* control for any additional variable(s).


{{7}}

> The association of fertilizer with tree height is {{.8}}.

## OLS Regression

A regression estimates the association of a 1 unit change in each of the independent variables with change in the dependent variable, while accounting for all of the other independent variables in the model.

$y_i = \beta_0 + \beta_1 x_{1i} + \Sigma \beta_k x_{ki} + e_i$

Here $x_{1i}$ is the treatment variable of interest. 

A regression controls for the additional observed variables ($x_{ki}$) that are included in the model.


{{9}}


> The association of fertilizer with tree height is {{.10}}.

## Propensity Scores

The propensity score estimates the probability of being administered the treatment, in this example, *fertilizer*. Treatment observations are matched to the most similar comparison group observation in terms of this probability, and an average difference is calculated.

A propensity score analysis controls for the additional observed variables that are included in the model.


{{11}}



{{12}}

> The association of fertilizer with tree height is {{.13}}.

### Assess Balance of Propensity Score Model [^Cuartas]

[^Cuartas]: With many thanks to Jorge Cuartas for ideas for some of this code.


{{14}}



{{15}}


![Density Plot of Propensity Score](mydensity.png)


{{16}}


# References 🌲

Camill, P., Chihara, L., Adams, B., Andreassi, C., Barry, A. N. N., Kalim, S., … Rafert, G. (2010). Early life history transitions and recruitment of Picea mariana in thawed boreal permafrost peatlands. *Ecology*. https://doi.org/10.1890/08-1839.1

Chihara, L. M., & Hesterberg, T. C. (2018). *Mathematical Statistics with Resampling and R*. https://doi.org/10.1002/9781119505969

Holland, P. W. (1986). Statistics and Causal Inference. *Journal of the American Statistical Association*, 81(396), 945–960. https://doi.org/10.1080/01621459.1986.10478354
    
    
