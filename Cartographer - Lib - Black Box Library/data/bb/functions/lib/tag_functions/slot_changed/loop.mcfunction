# Datapack  : Black Box Library
# Author(s) : RockNRed, PearUhDox
# Created   : 7/28/21
# Last Edit : 7/28/21
# Name      : Slot Change Lott
# Use       : Runs on loop as players to check when they change their selected hotbar slot

scoreboard players operation $slot_change.past bbl.storage = $slot_change.present bbl.storage
execute store result score $slot_change.present bbl.storage run data get entity @s SelectedItemSlot
execute unless score $slot_change.past bbl.storage = $slot_change.present bbl.storage run function bb:lib/tag_functions/slot_changed/tag



