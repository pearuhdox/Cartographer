execute store result score $proj_change_x ca.var run data get entity @s Motion[0] 100
execute store result score $proj_change_y ca.var run data get entity @s Motion[1] 100
execute store result score $proj_change_z ca.var run data get entity @s Motion[2] 100

execute unless score $was_arrow ca.var matches 1.. run scoreboard players operation $proj_change_x ca.var *= $20 ca.CONSTANT
execute unless score $was_arrow ca.var matches 1.. run scoreboard players operation $proj_change_z ca.var *= $20 ca.CONSTANT
execute unless score $was_arrow ca.var matches 1.. run scoreboard players operation $proj_change_y ca.var *= $10 ca.CONSTANT

execute if score $was_arrow ca.var matches 1.. run scoreboard players operation $proj_change_x ca.var *= $10 ca.CONSTANT
execute if score $was_arrow ca.var matches 1.. run scoreboard players operation $proj_change_z ca.var *= $10 ca.CONSTANT
execute if score $was_arrow ca.var matches 1.. run scoreboard players operation $proj_change_y ca.var *= $10 ca.CONSTANT

scoreboard players operation $proj_change_y ca.var += $200 ca.CONSTANT

execute store result entity @s Motion[0] double 0.001 run scoreboard players add $proj_change_x ca.var 0
execute store result entity @s Motion[1] double 0.001 run scoreboard players add $proj_change_y ca.var 0
execute store result entity @s Motion[2] double 0.001 run scoreboard players add $proj_change_z ca.var 0