########################################
# File: Cartographer Core - Helper / Push 5
#
# Author: PearUhDox | Date: 1/11/2021
#
# Description: Deals damage to the callee (intended for players).
# Damage taken is equal to the callee's "damage_queue" score.
########################################

gamerule showDeathMessages false

scoreboard players add $giant_count susile_count 1

execute if score $giant_count susile_count matches 1 as 00000c1d-0000-101f-0001-17581919f43d store result entity @s ArmorItems[3].tag.Enchantments[0].lvl short 1 run scoreboard players add @p damage_queue 10
execute if score $giant_count susile_count matches 2 as 00000c1e-0000-101f-0001-17581919f43d store result entity @s ArmorItems[3].tag.Enchantments[0].lvl short 1 run scoreboard players add @p damage_queue 10
execute if score $giant_count susile_count matches 3 as 00000c1f-0000-101f-0001-17581919f43d store result entity @s ArmorItems[3].tag.Enchantments[0].lvl short 1 run scoreboard players add @p damage_queue 10
execute if score $giant_count susile_count matches 4 as 00000c20-0000-101f-0001-17581919f43d store result entity @s ArmorItems[3].tag.Enchantments[0].lvl short 1 run scoreboard players add @p damage_queue 10
execute if score $giant_count susile_count matches 5 as 00000c21-0000-101f-0001-17581919f43d store result entity @s ArmorItems[3].tag.Enchantments[0].lvl short 1 run scoreboard players add @p damage_queue 10
execute if score $giant_count susile_count matches 6 as 00000c22-0000-101f-0001-17581919f43d store result entity @s ArmorItems[3].tag.Enchantments[0].lvl short 1 run scoreboard players add @p damage_queue 10
execute if score $giant_count susile_count matches 7 as 00000c23-0000-101f-0001-17581919f43d store result entity @s ArmorItems[3].tag.Enchantments[0].lvl short 1 run scoreboard players add @p damage_queue 10
execute if score $giant_count susile_count matches 8 as 00000c24-0000-101f-0001-17581919f43d store result entity @s ArmorItems[3].tag.Enchantments[0].lvl short 1 run scoreboard players add @p damage_queue 10

scoreboard players set @s damage_queue 0
attribute @s minecraft:generic.knockback_resistance modifier add 4-1-13-1-7 damage_kb_blocker 10 add
tag @s add damaging

execute if score $giant_count susile_count matches 1 as 00000c1d-0000-101f-0001-17581919f43d at @s run summon arrow ~ ~13 ~ {UUID:[I;3101,4127,11818,0],damage:10d,Motion:[0.0,-10.0,0.0],Tags:["susile_pin"]}
execute if score $giant_count susile_count matches 2 as 00000c1e-0000-101f-0001-17581919f43d at @s run summon arrow ~ ~13 ~ {UUID:[I;3102,4127,11818,0],damage:10d,Motion:[0.0,-10.0,0.0],Tags:["susile_pin"]}
execute if score $giant_count susile_count matches 3 as 00000c1f-0000-101f-0001-17581919f43d at @s run summon arrow ~ ~13 ~ {UUID:[I;3103,4127,11818,0],damage:10d,Motion:[0.0,-10.0,0.0],Tags:["susile_pin"]}
execute if score $giant_count susile_count matches 4 as 00000c20-0000-101f-0001-17581919f43d at @s run summon arrow ~ ~13 ~ {UUID:[I;3104,4127,11818,0],damage:10d,Motion:[0.0,-10.0,0.0],Tags:["susile_pin"]}
execute if score $giant_count susile_count matches 5 as 00000c21-0000-101f-0001-17581919f43d at @s run summon arrow ~ ~13 ~ {UUID:[I;3105,4127,11818,0],damage:10d,Motion:[0.0,-10.0,0.0],Tags:["susile_pin"]}
execute if score $giant_count susile_count matches 6 as 00000c22-0000-101f-0001-17581919f43d at @s run summon arrow ~ ~13 ~ {UUID:[I;3106,4127,11818,0],damage:10d,Motion:[0.0,-10.0,0.0],Tags:["susile_pin"]}
execute if score $giant_count susile_count matches 7 as 00000c23-0000-101f-0001-17581919f43d at @s run summon arrow ~ ~13 ~ {UUID:[I;3107,4127,11818,0],damage:10d,Motion:[0.0,-10.0,0.0],Tags:["susile_pin"]}
execute if score $giant_count susile_count matches 8 as 00000c24-0000-101f-0001-17581919f43d at @s run summon arrow ~ ~13 ~ {UUID:[I;3108,4127,11818,0],damage:10d,Motion:[0.0,-10.0,0.0],Tags:["susile_pin"]}

execute if score $giant_count susile_count matches 1 run data modify entity 00000c1d-0000-101f-0000-2e2a00000000 Owner set from entity @s UUID
execute if score $giant_count susile_count matches 2 run data modify entity 00000c1e-0000-101f-0000-2e2a00000000 Owner set from entity @s UUID
execute if score $giant_count susile_count matches 3 run data modify entity 00000c1f-0000-101f-0000-2e2a00000000 Owner set from entity @s UUID
execute if score $giant_count susile_count matches 4 run data modify entity 00000c20-0000-101f-0000-2e2a00000000 Owner set from entity @s UUID
execute if score $giant_count susile_count matches 5 run data modify entity 00000c21-0000-101f-0000-2e2a00000000 Owner set from entity @s UUID
execute if score $giant_count susile_count matches 6 run data modify entity 00000c22-0000-101f-0000-2e2a00000000 Owner set from entity @s UUID
execute if score $giant_count susile_count matches 7 run data modify entity 00000c23-0000-101f-0000-2e2a00000000 Owner set from entity @s UUID
execute if score $giant_count susile_count matches 8 run data modify entity 00000c24-0000-101f-0000-2e2a00000000 Owner set from entity @s UUID

schedule function cartographer_core:load/fix_gamerules 3t