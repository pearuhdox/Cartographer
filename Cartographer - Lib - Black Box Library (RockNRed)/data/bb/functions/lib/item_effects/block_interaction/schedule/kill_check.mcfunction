# Datapack  : Black Box Library
# Author(s) : RockNRed
# Created   : 8/11/21
# Last Edit : 8/11/21
# Name      : Kill Check
# Use       : Kills all slimes if there are no remaining players with a blocker.

execute if score $player_has_blocker bbl.storage matches 0 run function bb:lib/item_effects/block_interaction/schedule/kill
