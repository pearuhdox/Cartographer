tag @s add co_rotation_lock

tp @s ~ ~ ~ facing entity 0000001f-00de-140d-0000-0000000276ef feet

scoreboard players add @s co_send 16
scoreboard players remove @s co_y 3

execute if score $ability ca.xyz_convert matches 1.. run scoreboard players remove @s co_y 3

execute if score $witch ca.xyz_convert matches 1.. run scoreboard players remove @s co_y 3
execute if score $blaze ca.xyz_convert matches 1.. run scoreboard players add @s co_y 2

execute if score $inaccurate ca.xyz_convert matches 1.. run function cartographer_mob_abilities:projectiles/helper/get_motion_value/add_inaccuracy
execute if score $reduced_power ca.xyz_convert matches 1.. run scoreboard players operation @s co_send -= $reduced_power ca.xyz_convert

scoreboard players set $inaccurate ca.xyz_convert 0
scoreboard players set $reduced_power ca.xyz_convert 0

function motion:motion/push

data modify storage cartographer_mob_abilities:projectiles ConversionTemplate set value []
data modify storage cartographer_mob_abilities:projectiles ConversionTemplate set from entity @s Motion

execute store result score $con_mp_x ca.xyz_convert run data get storage cartographer_mob_abilities:projectiles ConversionTemplate[0] 100
execute store result score $con_mp_y ca.xyz_convert run data get storage cartographer_mob_abilities:projectiles ConversionTemplate[1] 100
execute store result score $con_mp_z ca.xyz_convert run data get storage cartographer_mob_abilities:projectiles ConversionTemplate[2] 100

execute store result storage cartographer_mob_abilities:projectiles ConversionTemplate[0] double 0.0015 run scoreboard players add $con_mp_x ca.xyz_convert 0
execute store result storage cartographer_mob_abilities:projectiles ConversionTemplate[1] double 0.0015 run scoreboard players add $con_mp_y ca.xyz_convert 0
execute store result storage cartographer_mob_abilities:projectiles ConversionTemplate[2] double 0.0015 run scoreboard players add $con_mp_z ca.xyz_convert 0

data modify entity @s power set from storage cartographer_mob_abilities:projectiles ConversionTemplate

data modify entity @s Motion set value [0.0,0.0,0.0]

data modify entity @s Rotation set value [0.0F,0.0F]