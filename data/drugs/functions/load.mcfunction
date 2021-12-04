function drugs:uninstall

scoreboard objectives add drugs.coas minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add drugs.score dummy
scoreboard objectives add drugs.withdrawal dummy
scoreboard objectives add drugs.mxWthdrwl dummy

#Defines the state of the player
#0/null: Clean
#1: Drugged
#2: Sober
#3: Withdrawn
scoreboard objectives add drugs.state dummy

#Holds the constants of this datapack
scoreboard objectives add drugs.const dummy
scoreboard players set 2 drugs.const 2
scoreboard players set 5 drugs.const 5
scoreboard players set maxScore drugs.const 41
scoreboard players set 100 drugs.const 100
scoreboard players set 1000 drugs.const 1000
scoreboard players set 1109 drugs.const 1109
scoreboard players set 10000 drugs.const 10000
scoreboard players set 14372 drugs.const 14372
scoreboard players set 16045 drugs.const 16045
scoreboard players set 69155 drugs.const 69155
scoreboard players set 209072 drugs.const 209072

#Holds the variables for this datapack
scoreboard objectives add drugs.var dummy

#Tracks deaths to reset all drug effects
scoreboard objectives add drugs.deaths deathCount

#Keeps track of drug dealers
scoreboard objectives add drugs.dealers dummy
scoreboard players set IDuckle drugs.dealers 1
clear @a written_book{author:"IDuckle"}
give @a[scores={drugs.dealers=1}] written_book{pages:['["",{"text":"Meth","bold":true,"clickEvent":{"action":"run_command","value":"/trigger drugs.giveMeth"}},"\\n","The physical effects of methamphetamine can include loss of appetite, hyperactivity and increased movement."]',"{\"text\":\"Mushroom\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger drugs.giveShroom\"}}"],title:"Book of All Known Drugs",author:IDuckle}

scoreboard objectives add drugs.giveMeth trigger
scoreboard objectives add drugs.giveShroom trigger
scoreboard players enable @a[scores={drugs.dealers=1}] drugs.giveMeth
scoreboard players enable @a[scores={drugs.dealers=1}] drugs.giveShroom