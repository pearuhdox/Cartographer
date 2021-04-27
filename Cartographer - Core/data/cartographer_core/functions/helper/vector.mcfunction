########################################
# File: Cartographer Core - Helper / Vector
#
# Author: PearUhDox | Date: 3/11/2021
#
# Description: Calculates a vector based on the direction the entity is facing.
# Intended to be used with custom knockback functions.
########################################

execute as @s store result score @s vectorX run data get entity @s Pos[0] 10
execute as @s store result score @s vectorY run data get entity @s Pos[1] 10
execute as @s store result score @s vectorZ run data get entity @s Pos[2] 10

#tellraw @a [{"score":{"name":"@s","objective":"vectorX"}},{"text":" [X1]"}]
#tellraw @a [{"score":{"name":"@s","objective":"vectorY"}},{"text":" [Y1]"}]
#tellraw @a [{"score":{"name":"@s","objective":"vectorZ"}},{"text":" [Z1]"}]

execute as @e[tag=vector,limit=1,sort=nearest] store result score @s vectorX run data get entity @s Pos[0] 10
execute as @e[tag=vector,limit=1,sort=nearest] store result score @s vectorY run data get entity @s Pos[1] 10
execute as @e[tag=vector,limit=1,sort=nearest] store result score @s vectorZ run data get entity @s Pos[2] 10

#execute as @e[tag=vector,limit=1,sort=nearest] run tellraw @a [{"score":{"name":"@s","objective":"vectorX"}},{"text":" [X2]"}]
#execute as @e[tag=vector,limit=1,sort=nearest] run tellraw @a [{"score":{"name":"@s","objective":"vectorY"}},{"text":" [Y2]"}]
#execute as @e[tag=vector,limit=1,sort=nearest] run tellraw @a [{"score":{"name":"@s","objective":"vectorZ"}},{"text":" [Z2]"}]

execute as @s run scoreboard players operation @s vectorX -= @e[tag=vector,limit=1,sort=nearest] vectorX
execute as @s run scoreboard players operation @s vectorY -= @e[tag=vector,limit=1,sort=nearest] vectorY
execute as @s run scoreboard players operation @s vectorZ -= @e[tag=vector,limit=1,sort=nearest] vectorZ

#tellraw @a [{"score":{"name":"@s","objective":"vectorX"}},{"text":" [XF]"}]
#tellraw @a [{"score":{"name":"@s","objective":"vectorY"}},{"text":" [YF]"}]
#tellraw @a [{"score":{"name":"@s","objective":"vectorZ"}},{"text":" [ZF]"}]