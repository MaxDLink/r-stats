

# HYPOTHESIS TESTING - FAIL TO REJECT OR REJECT 

# pnorm(q, lower.tail=TRUE) # find p value with pnorm

# pnorm is for probability 
# q is test stat. assumes less than tail not right tail (lower = false for right tail)
# apply prob rule complement rule if doing lower tail 1 - ... 

# same for C.I. but now used for proportion testing 
# assumes one proportion is .5 by default? 
# NULL because function works for two prop tests 

# prop.test(x, n, p = NULL, alt=c("tow.sided", "less", "greater"), correct=FALSE)

# help(prop.test) for complete details

# example of prop.test
# Default p is .5 and does two sided test by default 
# positive z if phat > h alternative in numerator 
# example 5.1 

# prop.test(x=120, n=180, correct=FALSE)

# calculate the p value for example 5.2 



# R code for 90% C.I. for p? 

# default is .95 for conf so change to .9 
Conf.Internval = prop.test(120, 180, conf.level = .9, correct = F)


# p value
# c ( ) is R's way of saying "this is a list" 
p = .6 # from 60% 
# alt = "g" -> greater (larger than)
prop_test = prop.test(120, 180, p = .6, alt="g", correct=F)
# prop_test provides p value and x-squared 
# must take square root of x-squared to get test statistic (Z)
z = sqrt(3.3333)

# z is 1.826 & p-value is 0.03394 
# know Test stat is positive because p_hat and p_not is positive: 
# p_hat - p_not is positive in this case 
# p value 3.3333 is compared to default alpha level (.05). Smaller than alpha so reject null & have strong evidence for alt. 

# for next problem
prop_2 = prop.test(120, 180, p=.7, alt="l", correct = F)
z = sqrt(0.95238)

# p is .1646 
# p_hat is 120/180 = .6666

# fail to reject here because negative: .1646 - .6666 = negative so fail to reject 

# Example 6.1 

# differs from (not equal to)

# always define what p represents 
# where p = prop. of rest. employees who say work stress .....

# HW 1.2 must write like this... math editor in canvas 




