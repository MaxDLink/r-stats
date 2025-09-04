# P hat 

p_hat = 462/1003

# independence 
# N - pop. size 
# n - sample size 
# N >= 10n 
n = 1003
# TODO: What is N????? Assuming 10x larger than n because our population is all adults in world 
if(N >= 10*n)
{
  print("We have independence!")
}else
{
  print("No independence")
}


# normality 
# n(p-hat) >= 10 && n(1-p-hat) >= 10 
if(n*p_hat >= 10 && n*(1-p_hat) >= 10){
  print("Normality achieved!")
} else {
  print("Normality not satisfied")
}

cond1 = n*p_hat

cond2 = n*(1-p_hat) 

print(cond1)
print(cond2)

# SE of p_hat 

SE_p_hat = sqrt((p_hat*(1-p_hat))/n)
print(SE_p_hat)

# Critical Value (z_star)
# what is p value for qnorm()? 
# Know probability for C.I. is 95%
one_tail = (1 - .95)/2
p_zs = .95 + one_tail # why? 
z_star = qnorm(p_zs)

# MOE 
MOE_simple = z_star*SE_p_hat
# sqrt((.5*(1-.5))/n)) SE -> p_hat*(1-p_hat) ....
MOE = z_star*(sqrt((.5*(1-.5))/n))

#Lower & upper bounds of large sample C.I. 
# RIN is met, so: 
upper_interval = p_hat + z_star*(sqrt((p_hat*(1 - p_hat)) / n))
lower_interval = p_hat - z_star*(sqrt((p_hat*(1 - p_hat)) / n))
interval <- c(lower_interval, upper_interval)

# display to console 
interval # range of plausible values for the parameter 

# parameter --- The value we are trying to determine 
# 1,003 adults, 462 used cellphone 
# true p value between (0.4297709 0.4914654)

# do not know p, use .5 
# MOE <= .25. Use .25? 
samplesize = (z_star/.25)^2*.5*.5

one_fourth = .5*.5

# 20% surveyed in previous evals, so p* = .2
samplesize2 = (z_star/.07)^2*.2*(1-.2)


