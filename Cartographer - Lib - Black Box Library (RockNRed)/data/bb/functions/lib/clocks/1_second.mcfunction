# Datapack  : Black Box Library
# Author(s) : RockNRed
# Created   : 4/17/22
# Last Edit : 4/17/22
# Name      : Clock 1 Second
# Use       : Ran every 1 second

scoreboard players set $1_second bbl.clock 0

function #minecraft:bbl/clock/1_second/global

execute as @a at @s run function #minecraft:bbl/clock/1_second/as_player