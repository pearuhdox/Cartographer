# Datapack  : Black Box Library
# Author(s) : RockNRed, PearUhDox
# Created   : 7/28/21
# Last Edit : 4/17/22
# Name      : Slot Change Loop
# Use       : Runs on loop as players to check when they change their selected hotbar slot

#Failsafe
execute unless score @s bbl.slot_change.present matches -99999..99999 store result score @s bbl.slot_change.present run data get entity @s SelectedItemSlot

scoreboard players operation @s bbl.slot_change.past = @s bbl.slot_change.present
execute store result score @s bbl.slot_change.present run data get entity @s SelectedItemSlot
execute unless score @s bbl.slot_change.past = @s bbl.slot_change.present run function bb:lib/tag_functions/slot_changed/tag



