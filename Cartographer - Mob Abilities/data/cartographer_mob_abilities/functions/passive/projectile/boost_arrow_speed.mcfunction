execute store result score $proj_change_x ca.var run data get entity @s Motion[0] 100
execute store result score $proj_change_y ca.var run data get entity @s Motion[1] 100
execute store result score $proj_change_z ca.var run data get entity @s Motion[2] 100

scoreboard players operation $proj_change_x ca.var *= $25 ca.CONSTANT
scoreboard players operation $proj_change_y ca.var *= $11 ca.CONSTANT
scoreboard players operation $proj_change_z ca.var *= $25 ca.CONSTANT

scoreboard players operation $proj_change_y ca.var += $200 ca.CONSTANT

execute store result entity @s Motion[0] double 0.001 run scoreboard players add $proj_change_x ca.var 0
execute store result entity @s Motion[1] double 0.001 run scoreboard players add $proj_change_y ca.var 0
execute store result entity @s Motion[2] double 0.001 run scoreboard players add $proj_change_z ca.var 0