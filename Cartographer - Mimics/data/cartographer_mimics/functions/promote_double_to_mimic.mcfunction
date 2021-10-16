execute if block ~ ~-0.2 ~ trapped_chest unless block ~ ~ ~1 trapped_chest unless block ~1 ~ ~ trapped_chest run setblock ~ ~0.5 ~ red_stained_glass replace
execute if block ~ ~-0.2 ~ trapped_chest unless block ~ ~ ~1 trapped_chest unless block ~1 ~ ~ trapped_chest run summon item_frame ~ ~-1 ~ {Tags:["mimic_position"],Item:{}}

execute if block ~ ~-0.2 ~ trapped_chest if block ~ ~ ~1 trapped_chest run setblock ~ ~0.5 ~1 red_stained_glass replace
execute if block ~ ~-0.2 ~ trapped_chest if block ~ ~ ~1 trapped_chest run summon item_frame ~ ~-1 ~1 {Tags:["mimic_position"],Item:{}}

execute if block ~ ~-0.2 ~ trapped_chest if block ~1 ~ ~ trapped_chest run setblock ~1 ~0.5 ~ red_stained_glass replace
execute if block ~ ~-0.2 ~ trapped_chest if block ~1 ~ ~ trapped_chest run summon item_frame ~1 ~-1 ~ {Tags:["mimic_position"],Item:{}}

execute as @e[type=item_frame,tag=mimic_position] at @s run summon armor_stand ~ ~0.5 ~ {Small:1b,Marker:1b,Invisible:1b,Tags:["cartographer_mimic","double_mimic"]}
execute as @e[type=item_frame,tag=mimic_position] at @s run playsound minecraft:entity.zombie_villager.converted master @p ~ ~ ~ 1 1
execute as @e[type=item_frame,tag=mimic_position] at @s run particle minecraft:totem_of_undying ~ ~1 ~ 0.5 0.5 0.5 0.1 100 normal

execute if entity @e[type=item_frame,tag=mimic_position] run tellraw @s {"text":"The double trapped chest you were standing on is now a mimic!","color":"aqua","italic":false}
execute unless entity @e[type=item_frame,tag=mimic_position] run tellraw @s {"text":"Command failed: Not standing on top of a trapped chest.","color":"red","italic":false}

kill @e[type=item_frame,tag=mimic_position]

