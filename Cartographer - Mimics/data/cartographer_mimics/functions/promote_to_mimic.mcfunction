execute if block ~ ~ ~ trapped_chest run setblock ~ ~1 ~ red_stained_glass replace
execute if block ~ ~ ~ trapped_chest run summon item_frame ~ ~-1 ~ {Tags:["mimic_position"],Item:{}}

execute as @e[type=item_frame,tag=mimic_position] at @s run summon armor_stand ~ ~0.5 ~ {Small:1b,Marker:1b,Invisible:1b,Tags:["cartographer_mimic"]}
execute as @e[type=item_frame,tag=mimic_position] at @s run playsound minecraft:entity.zombie_villager.converted master @p ~ ~ ~ 1 1
execute as @e[type=item_frame,tag=mimic_position] at @s run particle minecraft:totem_of_undying ~ ~1 ~ 0.5 0.5 0.5 0.1 100 normal

kill @e[type=item_frame,tag=mimic_position]

