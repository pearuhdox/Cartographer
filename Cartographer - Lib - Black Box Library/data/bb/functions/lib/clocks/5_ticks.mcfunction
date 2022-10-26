# Datapack  : Black Box Library
# Author(s) : RockNRed
# Created   : 4/17/22
# Last Edit : 4/17/22
# Name      : Clock 5 Ticks
# Use       : Ran every 5 ticks

scoreboard players set $5_ticks bbl.clock 0

function #minecraft:bbl/clock/5_ticks/global

execute as @a at @s run function #minecraft:bbl/clock/5_ticks/as_player