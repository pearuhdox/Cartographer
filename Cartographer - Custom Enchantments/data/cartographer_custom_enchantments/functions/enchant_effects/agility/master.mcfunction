attribute @s minecraft:generic.jump_strength modifier remove 31-1179-1290-2025-0
attribute @s minecraft:generic.safe_fall_distance modifier remove 31-1179-1290-2025-0

execute if score @s ca.agility matches 1 run attribute @s minecraft:generic.safe_fall_distance modifier add 31-1179-1290-2025-0 "agility" 1 add
execute if score @s ca.agility matches 2 run attribute @s minecraft:generic.safe_fall_distance modifier add 31-1179-1290-2025-0 "agility" 2 add
execute if score @s ca.agility matches 3.. run attribute @s minecraft:generic.safe_fall_distance modifier add 31-1179-1290-2025-0 "agility" 3 add

execute if score @s ca.agility matches 1 run attribute @s minecraft:generic.jump_strength modifier add 31-1179-1290-2025-0 "agility" 0.16 add
execute if score @s ca.agility matches 2 run attribute @s minecraft:generic.jump_strength modifier add 31-1179-1290-2025-0 "agility" 0.33 add
execute if score @s ca.agility matches 3.. run attribute @s minecraft:generic.jump_strength modifier add 31-1179-1290-2025-0 "agility" 0.46 add