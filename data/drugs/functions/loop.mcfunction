scoreboard players remove @a[scores={drugs.withdrawal=1..,drugs.state=1..}] drugs.withdrawal 1
scoreboard players set @a[scores={drugs.score=..-1}] drugs.score 0
execute at @a[scores={drugs.coas=1..}] run function drugs:check_drug

#Check every player if half of the drug time is reached. Then clear effects
execute at @a run function drugs:sub_routines/check_clear_effects

#Check every player. If they're withdrawn, give them nausea and blindness
execute at @a[scores={drugs.state=3}] run function drugs:sub_routines/withdraw_effects

#Check every player. If they're withdrawn but not marked, mark them
execute at @a[scores={drugs.withdrawal=..0,drugs.state=1..2}] run function drugs:states/withdrawn

#Reset all players who have died
execute at @a[scores={drugs.deaths=1..}] run function drugs:sub_routines/reset

#Sober healthy people:
execute at @a if score @p drugs.score matches 0.. run effect clear @p haste
execute at @a if score @p drugs.score matches 0.. run effect clear @p night_vision