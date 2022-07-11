attribute @s[scores={ca.temp_warp=600},type=player] minecraft:generic.movement_speed modifier add 31-20-5-13-16 "temp_warp+3" 0.45 multiply
attribute @s[scores={ca.temp_warp=401},type=player] minecraft:generic.movement_speed modifier remove 31-20-5-13-16

attribute @s[scores={ca.temp_warp=600},type=#bb:hostile] minecraft:generic.movement_speed modifier add 31-20-5-13-16 "temp_warp-3" -0.45 multiply
attribute @s[scores={ca.temp_warp=401},type=#bb:hostile] minecraft:generic.movement_speed modifier remove 31-20-5-13-16

scoreboard players set @s[scores={ca.temp_warp=401}] ca.temp_warp 0


attribute @s[scores={ca.temp_warp=400},type=player] minecraft:generic.movement_speed modifier add 31-20-5-13-16 "temp_warp+2" 0.3 multiply
attribute @s[scores={ca.temp_warp=201},type=player] minecraft:generic.movement_speed modifier remove 31-20-5-13-16

attribute @s[scores={ca.temp_warp=400},type=#bb:hostile] minecraft:generic.movement_speed modifier add 31-20-5-13-16 "temp_warp-2" -0.3 multiply
attribute @s[scores={ca.temp_warp=201},type=#bb:hostile] minecraft:generic.movement_speed modifier remove 31-20-5-13-16

scoreboard players set @s[scores={ca.temp_warp=201}] ca.temp_warp 0


attribute @s[scores={ca.temp_warp=200},type=player] minecraft:generic.movement_speed modifier add 31-20-5-13-16 "temp_warp+1" 0.15 multiply
attribute @s[scores={ca.temp_warp=1},type=player] minecraft:generic.movement_speed modifier remove 31-20-5-13-16

attribute @s[scores={ca.temp_warp=200},type=#bb:hostile] minecraft:generic.movement_speed modifier add 31-20-5-13-16 "temp_warp-1" -0.15 multiply
attribute @s[scores={ca.temp_warp=1},type=#bb:hostile] minecraft:generic.movement_speed modifier remove 31-20-5-13-16

scoreboard players set @s[scores={ca.temp_warp=1}] ca.temp_warp 0

particle minecraft:witch ~ ~ ~ 0.3 0 0.3 0 1 normal

scoreboard players remove @s[scores={ca.temp_warp=1..}] ca.temp_warp 1