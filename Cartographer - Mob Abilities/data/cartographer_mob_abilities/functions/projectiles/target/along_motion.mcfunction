data modify storage cartographer_mob_abilities:projectiles MotionTemplate set value []
data modify storage cartographer_mob_abilities:projectiles MotionTemplate set from entity @s Motion

data modify storage cartographer_mob_abilities:projectiles PosTemplate set value []
data modify storage cartographer_mob_abilities:projectiles PosTemplate set from entity @s Pos

execute store result score $x_motion ca.xyz_convert run data get storage cartographer_mob_abilities:projectiles MotionTemplate[0] 100
execute store result score $y_motion ca.xyz_convert run data get storage cartographer_mob_abilities:projectiles MotionTemplate[1] 100
execute store result score $z_motion ca.xyz_convert run data get storage cartographer_mob_abilities:projectiles MotionTemplate[2] 100

execute store result score $x_pos ca.xyz_convert run data get storage cartographer_mob_abilities:projectiles PosTemplate[0] 10
execute store result score $y_pos ca.xyz_convert run data get storage cartographer_mob_abilities:projectiles PosTemplate[1] 10
execute store result score $z_pos ca.xyz_convert run data get storage cartographer_mob_abilities:projectiles PosTemplate[2] 10

scoreboard players operation $x_res ca.xyz_convert = $x_pos ca.xyz_convert
scoreboard players operation $y_res ca.xyz_convert = $y_pos ca.xyz_convert
scoreboard players operation $z_res ca.xyz_convert = $z_pos ca.xyz_convert
scoreboard players operation $x_res ca.xyz_convert += $x_motion ca.xyz_convert
scoreboard players operation $y_res ca.xyz_convert += $y_motion ca.xyz_convert
scoreboard players operation $z_res ca.xyz_convert += $z_motion ca.xyz_convert

tp 0000001f-00de-140d-0000-0000000276ef @s
execute store result entity 0000001f-00de-140d-0000-0000000276ef Pos[0] double 0.1 run scoreboard players add $x_res ca.xyz_convert 0
execute store result entity 0000001f-00de-140d-0000-0000000276ef Pos[1] double 0.1 run scoreboard players remove $y_res ca.xyz_convert 0
execute store result entity 0000001f-00de-140d-0000-0000000276ef Pos[2] double 0.1 run scoreboard players add $z_res ca.xyz_convert 0

#execute as 0000001f-00de-140d-0000-0000000276ef at @s run particle minecraft:block_marker minecraft:target ~ ~ ~ 0 0 0 0 1 force
#say motion