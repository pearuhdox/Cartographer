########################################
# File: Cartographer Core - Helper / Vector
#
# Author: PearUhDox | Date: 3/11/2021
#
# Description: Calculates a vector based on the direction the entity is facing.
# Intended to be used with custom ca.knockback functions.
########################################

execute as @s store result score @s ca.vectorX run data get entity @s Pos[0] 10
execute as @s store result score @s ca.vectorY run data get entity @s Pos[1] 10
execute as @s store result score @s ca.vectorZ run data get entity @s Pos[2] 10

#tellraw @a [{"score":{"name":"@s","objective":"ca.vectorX"}},{"text":" [X1]"}]
#tellraw @a [{"score":{"name":"@s","objective":"ca.vectorY"}},{"text":" [Y1]"}]
#tellraw @a [{"score":{"name":"@s","objective":"ca.vectorZ"}},{"text":" [Z1]"}]

execute as @e[tag=vector,limit=1,sort=nearest] store result score @s ca.vectorX run data get entity @s Pos[0] 10
execute as @e[tag=vector,limit=1,sort=nearest] store result score @s ca.vectorY run data get entity @s Pos[1] 10
execute as @e[tag=vector,limit=1,sort=nearest] store result score @s ca.vectorZ run data get entity @s Pos[2] 10

#execute as @e[tag=vector,limit=1,sort=nearest] run tellraw @a [{"score":{"name":"@s","objective":"ca.vectorX"}},{"text":" [X2]"}]
#execute as @e[tag=vector,limit=1,sort=nearest] run tellraw @a [{"score":{"name":"@s","objective":"ca.vectorY"}},{"text":" [Y2]"}]
#execute as @e[tag=vector,limit=1,sort=nearest] run tellraw @a [{"score":{"name":"@s","objective":"ca.vectorZ"}},{"text":" [Z2]"}]

execute as @s run scoreboard players operation @s ca.vectorX -= @e[tag=vector,limit=1,sort=nearest] ca.vectorX
execute as @s run scoreboard players operation @s ca.vectorY -= @e[tag=vector,limit=1,sort=nearest] ca.vectorY
execute as @s run scoreboard players operation @s ca.vectorZ -= @e[tag=vector,limit=1,sort=nearest] ca.vectorZ

#tellraw @a [{"score":{"name":"@s","objective":"ca.vectorX"}},{"text":" [XF]"}]
#tellraw @a [{"score":{"name":"@s","objective":"ca.vectorY"}},{"text":" [YF]"}]
#tellraw @a [{"score":{"name":"@s","objective":"ca.vectorZ"}},{"text":" [ZF]"}]