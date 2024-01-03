execute if score @s ca.temp_warp matches 2.. if score @s ca.temp_level matches 1 run attribute @s minecraft:generic.movement_speed modifier add 31-20-5-13-16 "temp_warp-1" -0.08 multiply
execute if score @s ca.temp_warp matches 2.. if score @s ca.temp_level matches 2 run attribute @s minecraft:generic.movement_speed modifier add 31-20-5-13-16 "temp_warp-2" -0.16 multiply
execute if score @s ca.temp_warp matches 2.. if score @s ca.temp_level matches 3 run attribute @s minecraft:generic.movement_speed modifier add 31-20-5-13-16 "temp_warp-3" -0.24 multiply
execute if score @s ca.temp_warp matches 2.. if score @s ca.temp_level matches 4 run attribute @s minecraft:generic.movement_speed modifier add 31-20-5-13-16 "temp_warp-4" -0.32 multiply
execute if score @s ca.temp_warp matches 2.. if score @s ca.temp_level matches 5 run attribute @s minecraft:generic.movement_speed modifier add 31-20-5-13-16 "temp_warp-5" -0.4 multiply
execute if score @s ca.temp_warp matches 2.. if score @s ca.temp_level matches 6 run attribute @s minecraft:generic.movement_speed modifier add 31-20-5-13-16 "temp_warp-6" -0.48 multiply
execute if score @s ca.temp_warp matches 2.. if score @s ca.temp_level matches 7 run attribute @s minecraft:generic.movement_speed modifier add 31-20-5-13-16 "temp_warp-7" -0.56 multiply
execute if score @s ca.temp_warp matches 2.. if score @s ca.temp_level matches 8 run attribute @s minecraft:generic.movement_speed modifier add 31-20-5-13-16 "temp_warp-8" -0.64 multiply
execute if score @s ca.temp_warp matches 2.. if score @s ca.temp_level matches 9 run attribute @s minecraft:generic.movement_speed modifier add 31-20-5-13-16 "temp_warp-9" -0.72 multiply
execute if score @s ca.temp_warp matches 2.. if score @s ca.temp_level matches 10.. run attribute @s minecraft:generic.movement_speed modifier add 31-20-5-13-16 "temp_warp-10" -0.8 multiply


execute if score @s ca.temp_warp matches 1 run attribute @s minecraft:generic.movement_speed modifier remove 31-20-5-13-16
execute if score @s ca.temp_warp matches 1 run scoreboard players set @s ca.temp_level 0
execute if score @s ca.temp_warp matches 1 run scoreboard players set @s ca.temp_warp 0

particle minecraft:witch ~ ~ ~ 0.3 0 0.3 0 1 normal
execute if score @s ca.temp_warp matches 1.. run scoreboard players remove @s ca.temp_warp 1