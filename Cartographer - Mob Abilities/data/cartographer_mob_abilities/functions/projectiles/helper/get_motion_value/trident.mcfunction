tag @s add co_rotation_lock

tp @s ~ ~ ~ facing entity 0000001f-00de-140d-0000-0000000276ef feet

scoreboard players add @s co_send 16

execute if score $ability ca.xyz_convert matches 1.. run scoreboard players set @s co_y -3

execute if score $witch ca.xyz_convert matches 1.. run scoreboard players set @s co_y -3
execute if score $blaze ca.xyz_convert matches 1.. run scoreboard players set @s co_y 2

execute if score $inaccurate ca.xyz_convert matches 1.. run function cartographer_mob_abilities:projectiles/helper/get_motion_value/add_inaccuracy
execute if score $reduced_power ca.xyz_convert matches 1.. run scoreboard players operation @s co_send -= $reduced_power ca.xyz_convert

scoreboard players set $inaccurate ca.xyz_convert 0
scoreboard players set $reduced_power ca.xyz_convert 0

function motion:motion/push

data modify entity @s Rotation set value [0.0F,0.0F]