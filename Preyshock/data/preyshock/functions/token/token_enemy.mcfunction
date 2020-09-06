#This function is ran in the base function. It tries to apply a token to an enemy near a player.

#Tokens are always taken from the closest player.
#Tokens are only taken from players within 20 blocks.

execute if entity @a[scores={helper_tokens=1..},distance=..20] run tag @s add tokened
execute if entity @a[scores={helper_tokens=1..},distance=..20] run scoreboard players remove @a[scores={helper_tokens=1..},distance=..20,limit=1,sort=nearest] helper_tokens 1