data modify storage cartographer_charon:home Pos set value [0d,0d,0d]

execute store result storage cartographer_charon:home Pos[0] double 1 run scoreboard players add $force void_home.x 0
execute store result storage cartographer_charon:home Pos[1] double 1 run scoreboard players add $force void_home.y 0
execute store result storage cartographer_charon:home Pos[2] double 1 run scoreboard players add $force void_home.z 0

data modify entity 38118151-4815-1351-3118-11518 Pos set from storage cartographer_charon:home Pos