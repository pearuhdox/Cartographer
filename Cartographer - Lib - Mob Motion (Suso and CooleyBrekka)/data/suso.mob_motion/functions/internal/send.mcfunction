execute positioned 0.0 0.0 0.0 run tp 50502711-0-0-5-0 ^ ^ ^.1
data modify storage suso:mob_motion SendMotion set from entity 50502711-0-0-5-0 Pos

execute store result score #temp_x co_send run data get storage suso:mob_motion SendMotion[0] 1000
execute store result score #temp_y co_send run data get storage suso:mob_motion SendMotion[1] 1000
execute store result score #temp_z co_send run data get storage suso:mob_motion SendMotion[2] 1000

scoreboard players operation #temp_x co_send *= @s co_send
scoreboard players operation #temp_y co_send *= @s co_send
scoreboard players operation #temp_z co_send *= @s co_send

scoreboard players operation @s co_x += #temp_x co_send
scoreboard players operation @s co_y += #temp_y co_send
scoreboard players operation @s co_z += #temp_z co_send