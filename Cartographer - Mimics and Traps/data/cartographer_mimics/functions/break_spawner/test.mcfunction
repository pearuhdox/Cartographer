data modify storage cartographer_mimics:colossus compare set value {}
data modify storage cartographer_mimics:colossus compare set from entity @s Pos

execute store result score $x ca.mimic_var run data get storage cartographer_mimics:colossus compare[0]
execute store result score $y ca.mimic_var run data get storage cartographer_mimics:colossus compare[1]
execute store result score $z ca.mimic_var run data get storage cartographer_mimics:colossus compare[2]

execute store result storage cartographer:macro.mimic_spawner_break x int 1 run scoreboard players get $x ca.mimic_var
execute store result storage cartographer:macro.mimic_spawner_break y int 1 run scoreboard players get $y ca.mimic_var
execute store result storage cartographer:macro.mimic_spawner_break z int 1 run scoreboard players get $z ca.mimic_var

function cartographer_mimics:break_spawner/search with storage cartographer:macro.mimic_spawner_break