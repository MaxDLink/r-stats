# P hat 

p_hat = 462/1003

# independence 
# N - pop. size 
# n - sample size 
# N >= 10n 
n = 1003
# TODO: What is N????? Assuming 10x larger than n because our population is all adults in world 
## if(N >= 10n)
## {
  ## print("We have independence!")
## }
## if else
## {
  ## print("No independence")
## }


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

