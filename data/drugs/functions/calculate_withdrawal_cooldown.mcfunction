#Function:
# y = 0,1109x^4 - 14,372x^3 + 691,55x^2 - 16045x + 209072

#Sets the a component of the crazy polynomial to calcualte withdrawal
scoreboard players operation x4 drugs.var = @p drugs.score
scoreboard players operation x4 drugs.var *= @p drugs.score
scoreboard players operation x4 drugs.var *= 1109 drugs.const
scoreboard players operation x4 drugs.var /= 10000 drugs.const
scoreboard players operation x4 drugs.var *= @p drugs.score
scoreboard players operation x4 drugs.var *= @p drugs.score

#Sets the b component of the crazy polynomial
scoreboard players operation x3 drugs.var = @p drugs.score
scoreboard players operation x3 drugs.var *= @p drugs.score
scoreboard players operation x3 drugs.var *= @p drugs.score
scoreboard players operation x3 drugs.var *= 14372 drugs.const
scoreboard players operation x3 drugs.var /= 1000 drugs.const

#Sets the c component of the crazy polynomial
scoreboard players operation x2 drugs.var = @p drugs.score
scoreboard players operation x2 drugs.var *= @p drugs.score
scoreboard players operation x2 drugs.var *= 69155 drugs.const
scoreboard players operation x2 drugs.var /= 100 drugs.const

#Sets the d component of the crazy polynomial
scoreboard players operation x1 drugs.var = @p drugs.score
scoreboard players operation x1 drugs.var *= 16045 drugs.const

#Sums all the components
scoreboard players operation @p drugs.withdrawal = x4 drugs.var
scoreboard players operation @p drugs.withdrawal -= x3 drugs.var
scoreboard players operation @p drugs.withdrawal += x2 drugs.var
scoreboard players operation @p drugs.withdrawal -= x1 drugs.var
scoreboard players operation @p drugs.withdrawal += 209072 drugs.const
scoreboard players operation @p drugs.mxWthdrwl = @p drugs.withdrawal