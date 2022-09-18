execute store result score $proj_change_x ca.var run data get entity @s Motion[0] 1000
execute store result score $proj_change_y ca.var run data get entity @s Motion[1] 1000
execute store result score $proj_change_z ca.var run data get entity @s Motion[2] 1000

execute if entity @a[distance=..14] run scoreboard players operation $proj_change_x ca.var *= $15 ca.CONSTANT
execute if entity @a[distance=..14] run scoreboard players operation $proj_change_z ca.var *= $15 ca.CONSTANT

execute unless entity @a[distance=..14] run scoreboard players operation $proj_change_x ca.var *= $20 ca.CONSTANT
execute unless entity @a[distance=..14] run scoreboard players operation $proj_change_z ca.var *= $20 ca.CONSTANT

scoreboard players operation $proj_change_y ca.var *= $11 ca.CONSTANT

execute store result entity @s Motion[0] double 0.001 run scoreboard players add $proj_change_x ca.var 0
execute store result entity @s Motion[1] double 0.001 run scoreboard players add $proj_change_y ca.var 0
execute store result entity @s Motion[2] double 0.001 run scoreboard players add $proj_change_z ca.var 0