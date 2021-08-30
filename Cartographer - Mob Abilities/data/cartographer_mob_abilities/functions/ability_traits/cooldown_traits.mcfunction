#Runs as/at the player's position
scoreboard players operation $fourth_cdl cooldown = @s cooldown
scoreboard players operation $fourth_cdl cooldown /= $4 ca.CONSTANT


execute if entity @s[tag=ca.quickened] run scoreboard players operation @s cooldown -= $fourth_cdl cooldown
execute if entity @s[tag=ca.hastened] run scoreboard players operation @s cooldown -= $fourth_cdl cooldown
execute if entity @s[tag=ca.hastened] run scoreboard players operation @s cooldown -= $fourth_cdl cooldown

execute if entity @s[tag=ca.fatigued] run scoreboard players operation @s cooldown += $fourth_cdl cooldown
execute if entity @s[tag=ca.sluggish] run scoreboard players operation @s cooldown += $fourth_cdl cooldown
execute if entity @s[tag=ca.sluggish] run scoreboard players operation @s cooldown += $fourth_cdl cooldown