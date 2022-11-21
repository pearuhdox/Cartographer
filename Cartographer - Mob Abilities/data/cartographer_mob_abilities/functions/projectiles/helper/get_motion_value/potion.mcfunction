tag @s add co_rotation_lock

tp @s ~ ~ ~ facing entity 0000001f-00de-140d-0000-0000000276ef feet

scoreboard players add @s co_send 11
scoreboard players remove @s co_y 3
execute unless score $witch ca.xyz_convert matches 1.. unless entity @a[distance=..5] run scoreboard players add @s co_y 1
execute unless score $witch ca.xyz_convert matches 1.. unless entity @a[distance=..8] run scoreboard players add @s co_y 1
execute unless score $witch ca.xyz_convert matches 1.. unless entity @a[distance=..11] run scoreboard players add @s co_y 1
execute unless score $witch ca.xyz_convert matches 1.. unless entity @a[distance=..14] run scoreboard players add @s co_y 1
execute unless score $witch ca.xyz_convert matches 1.. unless entity @a[distance=..17] run scoreboard players add @s co_y 1
execute unless score $witch ca.xyz_convert matches 1.. unless entity @a[distance=..20] run scoreboard players add @s co_y 1

execute if score $blaze ca.xyz_convert matches 1.. run scoreboard players add @s co_y 2

execute if score $inaccurate ca.xyz_convert matches 1.. run function cartographer_mob_abilities:projectiles/helper/get_motion_value/add_inaccuracy
execute if score $reduced_power ca.xyz_convert matches 1.. run scoreboard players operation @s co_send -= $reduced_power ca.xyz_convert

scoreboard players set $inaccurate ca.xyz_convert 0
scoreboard players set $reduced_power ca.xyz_convert 0

function motion:motion/push