# Datapack  : Black Box Library
# Author(s) : RockNRed
# Created   : 11/13/21
# Last Edit : 11/13/21
# Name      : Missing Health Checker
# Use       : Return's target's health missing from max health

#Get player's max health
execute store result score $target_missing_health bbl.storage run attribute @s minecraft:generic.max_health get
#Get player's current health
function bb:lib/get_target_status/get_health
#Minus the player's health from their max health
scoreboard players operation $target_missing_health bbl.storage -= $target_health bbl.storage