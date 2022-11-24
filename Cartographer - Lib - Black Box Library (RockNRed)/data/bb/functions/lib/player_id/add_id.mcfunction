# Datapack  : Black Box Library
# Author(s) : RockNRed
# Created   : 4/17/22
# Last Edit : 4/17/22
# Name      : Player ID/Add player id
# Use       : Ran as a player without an ID to set their id and increment master score.

scoreboard players operation @s bbl.id = $next_id bbl.storage
scoreboard players add $next_id bbl.storage 1