# Datapack  : Black Box Library
# Author(s) : RockNRed
# Created   : 11/13/21
# Last Edit : 11/13/21
# Name      : Health Checker
# Use       : Return's target's health

#Get target's current health
execute store result score $target_health bbl.storage run data get entity @s Health

#Special condition for Eruption - Subtract the value of exec-health
execute if score $exec_dmg ca.eruption matches 1.. run scoreboard players operation $target_health bbl.storage -= $exec_dmg ca.eruption