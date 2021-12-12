# Very Large OR's or RR's or IRR's

One sometimes sees *extremely large* OR's or RR's or IRR's.

1. Is this due to very low *base rates* of one category of the outcome? Those can inflate RR's and OR's.
2. What are the *units of the independent variables*? For example if your independent variable is a percentage expressed on a 0 to 1.0 scale, that can radically inflate your estimates. Rescaling the independent variable sometimes helps.
3. Is this an issue of *complete, or near complete separation*? i.e. one variable almost perfectly predicts the outcome? That too can lead to very large OR's or RR's.
4. Are there *very small cell (subsample) sizes*? Small sample sizes (cell sizes) can create anomalous estimates i.e. estimates from small samples (small table cells) can be very *noisy* estimates.

There may be other possibilities, but if one of the above strategies does not solve the problem, I would suggest deleting the variable from your model if possible.
