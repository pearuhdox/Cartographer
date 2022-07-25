# Calculates the distance between marker and entity
# Casts the distance to motion values 

execute as @s store result score @s co_vectorX run data get entity @s Pos[0] 100
execute as @s store result score @s co_vectorY run data get entity @s Pos[1] 100
execute as @s store result score @s co_vectorZ run data get entity @s Pos[2] 100

execute as @e[tag=co_motion_target,limit=1,sort=nearest] store result score @s co_vectorX run data get entity @s Pos[0] 100
execute as @e[tag=co_motion_target,limit=1,sort=nearest] store result score @s co_vectorY run data get entity @s Pos[1] 100
execute as @e[tag=co_motion_target,limit=1,sort=nearest] store result score @s co_vectorZ run data get entity @s Pos[2] 100

execute as @s run scoreboard players operation @s co_vectorX -= @e[tag=co_motion_target,limit=1,sort=nearest] co_vectorX
execute as @s run scoreboard players operation @s co_vectorY -= @e[tag=co_motion_target,limit=1,sort=nearest] co_vectorY
execute as @s run scoreboard players operation @s co_vectorZ -= @e[tag=co_motion_target,limit=1,sort=nearest] co_vectorZ

execute store result entity @s Motion[0] double 0.01 run scoreboard players get @s co_vectorX
execute store result entity @s Motion[1] double 0.01 run scoreboard players get @s co_vectorY
execute store result entity @s Motion[2] double 0.01 run scoreboard players get @s co_vectorZ

kill @e[tag=co_motion_target]

