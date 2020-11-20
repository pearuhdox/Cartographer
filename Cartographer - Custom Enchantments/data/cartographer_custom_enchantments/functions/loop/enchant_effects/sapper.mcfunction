execute if entity @s[scores={sapper=1}] as @s at @s run function cartographer_core:helper/heal_player/1

execute if entity @s[scores={sapper=2}] as @s at @s run function cartographer_core:helper/heal_player/2

execute if entity @s[scores={sapper=3}] as @s at @s run function cartographer_core:helper/heal_player/2
execute if entity @s[scores={sapper=3}] as @s at @s run function cartographer_core:helper/heal_player/1

execute if entity @s[scores={sapper=4}] as @s at @s run function cartographer_core:helper/heal_player/4

execute as @s at @s run playsound minecraft:entity.witch.drink player @a[distance=..8] ~ ~ ~ 0.5 2
execute as @s at @e[type=minecraft:experience_orb,limit=1,sort=nearest] run particle minecraft:heart ~ ~ ~ 0.3 0.3 0.3 1 5 normal 