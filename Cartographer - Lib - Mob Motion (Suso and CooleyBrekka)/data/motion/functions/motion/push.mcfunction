scoreboard players add @s co_x 0
scoreboard players add @s co_y 0
scoreboard players add @s co_z 0
scoreboard players add @s co_pitch 0
scoreboard players add @s co_yaw 0
scoreboard players add @s co_send 0

execute rotated as @s[tag=co_rotation_lock] run function suso.mob_motion:internal/do
execute if entity @s[tag=!co_rotation_lock] at @s run function suso.mob_motion:internal/no_rot_lock

scoreboard players set @s co_x 0
scoreboard players set @s co_y 0
scoreboard players set @s co_z 0
scoreboard players set @s co_pitch 0
scoreboard players set @s co_yaw 0
scoreboard players set @s co_send 0