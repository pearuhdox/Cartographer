#Get the player's health and multiply it up by 10, then divide by 20 to get 1/20 of the health (5%) but with a tenth decimal place
execute store result score $health_max ca.var run attribute @s minecraft:generic.max_health get
scoreboard players operation $health_max ca.var *= $10 ca.CONSTANT
scoreboard players operation $health_max ca.var /= $20 ca.CONSTANT

#Isolate that decimal
scoreboard players operation $health_mod ca.var = $health_max ca.var
scoreboard players operation $health_mod ca.var %= $10 ca.CONSTANT



scoreboard players operation @s bbl.heal_queue += $health_max ca.var
function bb:call/hpm/player/heal
particle minecraft:heart ~ ~0.2 ~ 0.5 0.15 0.5 0 1 force
scoreboard players remove @s ca.regen_bank 100