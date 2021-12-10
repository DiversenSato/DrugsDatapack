scoreboard players remove @p drugs.score 10
execute if score @p drugs.score matches ..0 run scoreboard players set @p drugs.state 0
execute if score @p drugs.score matches ..0 run scoreboard players set @p drugs.score 0
execute if score @p drugs.score matches 1.. run scoreboard players set @p drugs.state 2

execute if score @p drugs.score matches ..0 run tellraw @p {"text":"You feel completely healthy!","color":"green"}
execute if score @p drugs.score matches 1.. run tellraw @p {"text":"You feel slightly better!","color":"dark_green"}

playsound custom.pills neutral @a ~ ~ ~ 1
item replace entity @p weapon.mainhand with air