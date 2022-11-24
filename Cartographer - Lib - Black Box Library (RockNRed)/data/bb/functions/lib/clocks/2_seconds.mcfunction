# Datapack  : Black Box Library
# Author(s) : RockNRed
# Created   : 4/17/22
# Last Edit : 4/17/22
# Name      : Clock 2 Seconds
# Use       : Ran every 2 seconds

scoreboard players set $2_seconds bbl.clock 0

function #minecraft:bbl/clock/2_seconds/global

execute as @a at @s run function #minecraft:bbl/clock/2_seconds/as_player