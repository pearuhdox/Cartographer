
#Get current health and scale * 100
execute store result score $md.health bbl.storage run data get entity @s Health 100
scoreboard players operation @s bbl.heal_queue *= $100 bbl.constant

#Heal the mob
execute store result entity @s Health float 0.01 run scoreboard players operation $md.health bbl.storage += @s bbl.heal_queue

#Set heal queue to 0.
scoreboard players reset @s bbl.heal_queue
