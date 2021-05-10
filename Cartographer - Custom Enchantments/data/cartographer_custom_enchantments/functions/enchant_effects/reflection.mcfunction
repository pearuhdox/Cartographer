execute as @s store result score @s ca.reflect_v run data get entity @s Motion[0] 1000
execute as @s store result entity @s Motion[0] double 0.001 run scoreboard players operation @s ca.reflect_v *= $-1 ca.CONSTANT

execute as @s store result score @s ca.reflect_v run data get entity @s Motion[1] 1000
execute as @s store result entity @s Motion[1] double 0.001 run scoreboard players operation @s ca.reflect_v *= $-1 ca.CONSTANT

execute as @s store result score @s ca.reflect_v run data get entity @s Motion[2] 1000
execute as @s store result entity @s Motion[2] double 0.001 run scoreboard players operation @s ca.reflect_v *= $-1 ca.CONSTANT

execute as @s store result score @s ca.reflect_v run data get entity @s damage 100
execute as @s store result entity @s damage double 0.001 run scoreboard players operation @s ca.reflect_v /= $custom_enchant.Reflect_I ca.CONSTANT

tag @s add reflected