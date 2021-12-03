scoreboard players add @p drugs.score 1
scoreboard players set @p drugs.state 1
#If score is under maxScore, calculate the time until next withdrawal
execute if score @p drugs.score < maxScore drugs.const run function drugs:calculate_withdrawal_cooldown
#Else set cooldown to 36000 ticks / 30 min.
execute unless score @p drugs.score < maxScore drugs.const run scoreboard players set @p drugs.withdrawal 36000

item replace entity @p weapon.mainhand with air

playsound entity.player.burp neutral @a ~ ~ ~ 1 2
effect give @p poison 7 0 true
effect give @p night_vision 10453 0 true