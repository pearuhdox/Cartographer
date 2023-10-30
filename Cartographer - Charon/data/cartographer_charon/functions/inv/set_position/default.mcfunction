function bb:lib/pldata/write

execute store result score @s void_home.x run data get storage bbl:pldata sudo_root.working_data.CharonHomePos[0]
execute store result score @s void_home.y run data get storage bbl:pldata sudo_root.working_data.CharonHomePos[1]
execute store result score @s void_home.z run data get storage bbl:pldata sudo_root.working_data.CharonHomePos[2]

data modify storage cartographer_charon:home Pos set value [0d,0d,0d]

execute store result storage cartographer_charon:home Pos[0] double 1 run scoreboard players add @s void_home.x 0
execute store result storage cartographer_charon:home Pos[1] double 1 run scoreboard players add @s void_home.y 0
execute store result storage cartographer_charon:home Pos[2] double 1 run scoreboard players add @s void_home.z 0

data modify entity 38118151-4815-1351-3118-11518 Pos set from storage cartographer_charon:home Pos