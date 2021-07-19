#Get current health and scale * 100
execute store result score $md.Health cdl.Temp run data get entity @s Health 100
scoreboard players operation @s cdl.Heal_Queue *= $constant.100 cdl.Temp

#Heal the mob
execute store result entity @s Health float 0.01 run scoreboard players operation $md.Health cdl.Temp += @s cdl.Heal_Queue

#Set heal queue to 0.
scoreboard players reset @s cdl.Heal_Queue