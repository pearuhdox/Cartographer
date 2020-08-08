execute if entity @e[type=trident,distance=..3] run execute if entity @s[scores={ricochet=1..}] run scoreboard players set @e[type=trident,distance=..3,limit=1] ricochet 1

execute if entity @e[type=trident,distance=..3] run execute if entity @s[scores={ricochet=1}] run tag @e[type=trident,distance=..3,limit=1] add ricochet_1
execute if entity @e[type=trident,distance=..3] run execute if entity @s[scores={ricochet=2}] run tag @e[type=trident,distance=..3,limit=1] add ricochet_2
execute if entity @e[type=trident,distance=..3] run execute if entity @s[scores={ricochet=3}] run tag @e[type=trident,distance=..3,limit=1] add ricochet_3