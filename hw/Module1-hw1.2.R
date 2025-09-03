# Applied Stats Hypothesis Testing 

A = prop.test(48, 86, .5, correct = F)

B = prop.test(39, 60, .5, alt = "g", correct = F)

p_val = pnorm(2.3238, lower.tail = T) # apply complement rule 1 - to this... or do line 9 

p_val_right = pnorm(2.3238, lower.tail = F)