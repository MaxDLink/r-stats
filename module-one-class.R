
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

# calculate the 95% large-sample CI using formula 

# formula for C.I. 
C.I. = phat-zstar*sqrt(phat*(1-phat)/n)

# can also do 
C.I.2 = phat+zstar*sqrt(phat*(1-phat)/n)

