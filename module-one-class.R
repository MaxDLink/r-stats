
# models storage with objects & basic formulas 

value1 = qnorm(.975) # know prob, need value 

print(value1)

value2 = qnorm(.025) # negative version 

print(value2)

prob = pnorm(1.75) # know value, need prob 

print(prob)

n=2054 

# zstar 
zstar=qnorm(.975)

# module 1 slide 19 --> Formula sample size for desired margin of error with 
# one prop.  

# calculate the 95% large-sample CI using formula 
# formula for C.I. 
C.I. = phat-zstar*sqrt(phat*(1-phat)/n)

# can also do 
C.I.2 = phat+zstar*sqrt(phat*(1-phat)/n)

# easy way to do a C.I in R, not long hand 
# success number, sample size, correct = False 
prop = prop.test(1063, 2054, correct = FALSE)

# x + 2 = 8 + 2 = 10 
# n + 4 = 20 + 4 = 24 
# know the c.i. is 90% 
propplusfour = prop.test(10, 24, conf.level = 0.9, correct = FALSE)

# determine the sample size needed to estimate p to within 0.04 with 99% confidence 


# .005 in each tail, use .995 
zstar = qnorm(.995) # to get Z*

# m = .04 

# p-star = .5 # pulled because we know that it is the most conservative value 

# sample size needed 
samplesize = (2.576/.04)^2*.5*.5 # round to 1037 
