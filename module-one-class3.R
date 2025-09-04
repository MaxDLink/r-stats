# test for confidence interval 
test = prop.test(x=c(63,27), n=c(296,251), correct = F)

# we are 96% confident that the differences in the proportions of women and men wearing
# apparel with "No Sweat" labels is between .04 and .166. The interval does not contain 0 (+ range), 
# indicating the proportions are likely different


# women - men > 0 --> p(women) > p(men)

# plus for method when normality is violated ... 

# error in line 14: Chi-squared approximation may be incorrect
plus_four_conf = prop.test(x=c(5,4), n=c(14,14), conf.level=.9, correct=F)

# (-.218, .361)

# interval contains 0 so indicating proportions could be equal 

# same prop.test formula for example 12.2 
# prop.test(x = c(63, 27), n = .... )

# remember to multiply by 2 because two tailed... 
