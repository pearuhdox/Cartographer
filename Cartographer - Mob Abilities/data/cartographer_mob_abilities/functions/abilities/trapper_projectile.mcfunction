particle minecraft:sneeze ~ ~1 ~ 0.1 0.1 0.1 0.05 1 normal @a

execute as @s at @s run tp @s ^ ^ ^1.25

execute unless block ~ ~1 ~ #cartographer_core:can_raycast as @s at @s positioned ~ ~-2 ~ run function cartographer_mob_abilities:abilities/trapper_place
execute unless block ~ ~1 ~ #cartographer_core:can_raycast as @s at @s run kill @s
execute unless block ~ ~1 ~ #cartographer_core:can_raycast as @s at @s run playsound minecraft:block.glass.break hostile @a[distance=..10] ~ ~ ~ 1 0.5
execute unless block ~ ~1 ~ #cartographer_core:can_raycast as @s at @s run particle minecraft:sneeze ~ ~1.5 ~ 0.25 0.25 0.25 0.1 20 normal

execute as @s[tag=!target] run tag @s add target