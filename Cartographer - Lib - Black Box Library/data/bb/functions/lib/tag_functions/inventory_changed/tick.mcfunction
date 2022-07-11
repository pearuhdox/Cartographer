# Datapack  : Black Box Library
# Author(s) : RockNRed
# Created   : 7/28/21
# Last Edit : 7/28/21
# Name      : Tick
# Use       : Runs in the advancement tick to apply a tag to the player whose inventory updated

advancement revoke @s only bb:inventory_changed
tag @s add bbl.inventory_changing
