attribute @s[scores={ca.temp_warp=600}] minecraft:generic.movement_speed modifier add 31-20-5-13-16 "temp_warp+3" 0.45 multiply
attribute @s[scores={ca.temp_warp=401}] minecraft:generic.movement_speed modifier remove 31-20-5-13-16

scoreboard players set @s[scores={ca.temp_warp=401}] ca.temp_warp 0

attribute @s[scores={ca.temp_warp=400}] minecraft:generic.movement_speed modifier add 31-20-5-13-16 "temp_warp+2" 0.3 multiply
attribute @s[scores={ca.temp_warp=201}] minecraft:generic.movement_speed modifier remove 31-20-5-13-16

scoreboard players set @s[scores={ca.temp_warp=201}] ca.temp_warp 0

attribute @s[scores={ca.temp_warp=200}] minecraft:generic.movement_speed modifier add 31-20-5-13-16 "temp_warp+1" 0.15 multiply
attribute @s[scores={ca.temp_warp=1}] minecraft:generic.movement_speed modifier remove 31-20-5-13-16

scoreboard players set @s[scores={ca.temp_warp=1}] ca.temp_warp 0

particle minecraft:witch ~ ~ ~ 0.3 0 0.3 0 1 normal

execute if score @s ca.temp_warp matches 1.. run scoreboard players remove @s ca.temp_warp 1