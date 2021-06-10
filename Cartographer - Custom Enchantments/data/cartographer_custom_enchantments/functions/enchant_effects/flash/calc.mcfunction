execute store result score @s c.var run data get entity @s Motion[0] 10
execute if score @s c.var matches ..-1 run scoreboard players operation @s c.var *= $-1 ca.CONSTANT
scoreboard players operation @s flash += @s c.var

execute store result score @s c.var run data get entity @s Motion[1] 10
execute if score @s c.var matches ..0 run scoreboard players operation @s c.var *= $-1 ca.CONSTANT
scoreboard players operation @s flash += @s c.var

execute store result score @s c.var run data get entity @s Motion[2] 10
execute if score @s c.var matches ..0 run scoreboard players operation @s c.var *= $-1 ca.CONSTANT
scoreboard players operation @s flash += @s c.var