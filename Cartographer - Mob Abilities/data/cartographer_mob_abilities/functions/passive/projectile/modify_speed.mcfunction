execute store result score $proj_change_xp ca.var run data get entity @s power[0] 1000
execute store result score $proj_change_yp ca.var run data get entity @s power[1] 1000
execute store result score $proj_change_zp ca.var run data get entity @s power[2] 1000

execute store result score $proj_change_x ca.var run data get entity @s power[0] 1000
execute store result score $proj_change_y ca.var run data get entity @s power[1] 1000
execute store result score $proj_change_z ca.var run data get entity @s power[2] 1000

scoreboard players operation $proj_change_x ca.var /= $4 ca.CONSTANT
scoreboard players operation $proj_change_y ca.var /= $4 ca.CONSTANT
scoreboard players operation $proj_change_z ca.var /= $4 ca.CONSTANT

#Make projectiles overall move more flat and not upwards
scoreboard players remove $proj_change_y ca.var 35

execute if entity @s[type=dragon_fireball] run scoreboard players remove $proj_change_y ca.var 10

execute store result entity @s power[0] double 0.001 run scoreboard players add $proj_change_x ca.var 0
execute store result entity @s power[1] double 0.001 run scoreboard players add $proj_change_y ca.var 0
execute store result entity @s power[2] double 0.001 run scoreboard players add $proj_change_z ca.var 0