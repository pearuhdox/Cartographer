execute positioned 0.0 0.0 0.0 run tp 50502711-0-0-5-0 ^.1 ^ ^
data modify storage suso:mob_motion YawMotion set from entity 50502711-0-0-5-0 Pos

execute store result score #temp_x co_yaw run data get storage suso:mob_motion YawMotion[0] 1000
execute store result score #temp_y co_yaw run data get storage suso:mob_motion YawMotion[1] 1000
execute store result score #temp_z co_yaw run data get storage suso:mob_motion YawMotion[2] 1000

scoreboard players operation #temp_x co_yaw *= @s co_yaw
scoreboard players operation #temp_y co_yaw *= @s co_yaw
scoreboard players operation #temp_z co_yaw *= @s co_yaw

scoreboard players operation @s co_x += #temp_x co_yaw
scoreboard players operation @s co_y += #temp_y co_yaw
scoreboard players operation @s co_z += #temp_z co_yaw