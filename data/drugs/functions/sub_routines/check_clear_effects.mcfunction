scoreboard players operation halfWithdrawal drugs.var = @p drugs.mxWthdrwl
scoreboard players operation halfWithdrawal drugs.var /= 2 drugs.const

execute if score halfWithdrawal drugs.var > @p drugs.withdrawal if score @p drugs.state matches 1 run function drugs:states/sober