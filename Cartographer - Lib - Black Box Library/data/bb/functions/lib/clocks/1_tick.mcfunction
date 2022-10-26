# Datapack  : Black Box Library
# Author(s) : RockNRed
# Created   : 4/17/22
# Last Edit : 4/17/22
# Name      : Clock 1 Tick
# Use       : Ran every 1 tick

scoreboard players set $1_tick bbl.clock 0

function #minecraft:bbl/clock/1_tick/global

execute as @a at @s run function #minecraft:bbl/clock/1_tick/as_player