particle minecraft:end_rod ~ ~1.25 ~ 0 0 0 0.05 10 normal

playsound minecraft:block.chest.open block @a[distance=..10] ~ ~ ~ 1 1.5

tag @s add spawned

tag @s add ca.la.tracked

execute if block ~ ~ ~ redstone_wire run tag @s add trapped
execute if block ~ ~ ~ redstone_wire run setblock ~ ~ ~ air replace

scoreboard players set $la.run ca.var 1



execute if entity @s[tag=pose_sitting] run tp @s ~ ~-0.6 ~ facing entity @p feet

execute if entity @s[tag=pose_sitting] run tag @s add fix_rot_mojang_stupid