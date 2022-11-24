# Datapack  : Black Box Library
# Author(s) : RockNRed
# Created   : 4/17/22
# Last Edit : 4/17/22
# Name      : Clock 5 Seconds
# Use       : Ran every 5 seconds

scoreboard players set $5_seconds bbl.clock 0

function #minecraft:bbl/clock/5_seconds/global

execute as @a at @s run function #minecraft:bbl/clock/5_seconds/as_player