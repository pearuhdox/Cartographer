#This function is ran in the base function. It tries to apply a token to an enemy near a player.

#Tokens are always taken from the closest player.
#Tokens are only taken from players within 20 blocks.

tag @s add tokened
scoreboard players remove @a[tag=los_target] helper_tokens 1