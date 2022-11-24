# Datapack  : Moonlit Archive
# Module    : Core
# Author(s) : RockNRed
# Created   : 7/21/21
# Last Edit : 4/17/22
# Name      : Player Initilization
# Use       : Ran as the player when they first join to initialize.

#Add tag
tag @s add bbl.initialized

execute unless score @s bbl.id matches -99999..99999 run function bb:lib/player_id/add_id