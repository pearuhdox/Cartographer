execute positioned 0.0 0.0 0.0 run tp 50502711-0-0-5-0 ^ ^.1 ^
data modify storage suso:mob_motion PitchMotion set from entity 50502711-0-0-5-0 Pos

execute store result score #temp_x co_pitch run data get storage suso:mob_motion PitchMotion[0] 1000
execute store result score #temp_y co_pitch run data get storage suso:mob_motion PitchMotion[1] 1000
execute store result score #temp_z co_pitch run data get storage suso:mob_motion PitchMotion[2] 1000

scoreboard players operation #temp_x co_pitch *= @s co_pitch
scoreboard players operation #temp_y co_pitch *= @s co_pitch
scoreboard players operation #temp_z co_pitch *= @s co_pitch

scoreboard players operation @s co_x += #temp_x co_pitch
scoreboard players operation @s co_y += #temp_y co_pitch
scoreboard players operation @s co_z += #temp_z co_pitch