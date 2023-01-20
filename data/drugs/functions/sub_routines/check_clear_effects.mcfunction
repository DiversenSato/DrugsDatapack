scoreboard players operation @p drugs.halfWithdrawal = @p drugs.mxWthdrwl
scoreboard players operation @p drugs.halfWithdrawal /= 2 drugs.const

execute if score @p drugs.halfWithdrawal > @p drugs.withdrawal if score @p drugs.state matches 1 run function drugs:states/sober