# Datapack  : Black Box Library
# Author(s) : RockNRed
# Created   : 11/13/21
# Last Edit : 11/13/21
# Name      : Pcercentage Health Checker
# Use       : Return's target's percentage of health

#Get player's max health
execute store result score $target_max_health bbl.storage run attribute @s minecraft:generic.max_health get
#Get player's current health
function bb:lib/get_target_status/get_health
#Multiply current health by 100
scoreboard players operation $target_health bbl.storage *= $100 bbl.constant
#Divide current health by max health
scoreboard players operation $target_health bbl.storage /= $target_max_health bbl.storage
#Set intermediary score
scoreboard players operation $percentage_health_remaining bbl.storage = $target_health bbl.storage