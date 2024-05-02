scoreboard players operation $rally_restore ca.rally *= $20 ca.CONSTANT

scoreboard players operation @s ca.rally_banking = $rally_restore ca.rally

playsound minecraft:entity.witch.drink player @s ~ ~ ~ 1 0.75
playsound minecraft:entity.witch.drink player @s ~ ~ ~ 1 1.5
playsound minecraft:entity.witch.drink player @s ~ ~ ~ 1 2

scoreboard players set $rally_restore ca.rally 0