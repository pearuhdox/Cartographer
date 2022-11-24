scoreboard players operation @s co_x *= #100 co_x
scoreboard players operation @s co_y *= #100 co_x
scoreboard players operation @s co_z *= #100 co_x

execute unless score @s co_pitch matches 0 run function suso.mob_motion:internal/pitch
execute unless score @s co_yaw matches 0 run function suso.mob_motion:internal/yaw
execute unless score @s co_send matches 0 run function suso.mob_motion:internal/send

data modify storage suso:mob_motion Motion set value [0.0d, 0.0d, 0.0d]
execute store result storage suso:mob_motion Motion[0] double 0.001 run scoreboard players get @s co_x
execute store result storage suso:mob_motion Motion[1] double 0.001 run scoreboard players get @s co_y
execute store result storage suso:mob_motion Motion[2] double 0.001 run scoreboard players get @s co_z

data modify entity @s Motion set from storage suso:mob_motion Motion