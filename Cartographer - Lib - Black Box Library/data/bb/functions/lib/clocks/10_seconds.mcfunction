# Datapack  : Black Box Library
# Author(s) : RockNRed
# Created   : 4/17/22
# Last Edit : 4/17/22
# Name      : Clock 10 Seconds
# Use       : Ran every 10 seconds

scoreboard players set $10_seconds bbl.clock 0

function #minecraft:bbl/clock/10_seconds/global

execute as @a at @s run function #minecraft:bbl/clock/10_seconds/as_player