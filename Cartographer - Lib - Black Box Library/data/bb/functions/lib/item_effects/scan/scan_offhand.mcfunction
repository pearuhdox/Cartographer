# Datapack  : Black Box Library
# Author(s) : RockNRed / PearUhDox
# Created   : 8/11/21
# Last Edit : 8/11/21
# Name      : Scan Offhand
# Use       : Scans the player's inventory/equipment for items with custom effects.

execute store result score @s bbl.storage run data get storage bbl:item_effects sudo_root.offhand.tag.item_effects[{id:"block_interaction"}].lvl
execute if score @s bbl.storage matches 1.. run scoreboard players operation @s bbl.ie.block += @s bbl.storage