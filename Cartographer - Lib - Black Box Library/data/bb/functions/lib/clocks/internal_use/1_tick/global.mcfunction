# Datapack  : Black Box Library
# Author(s) : RockNRed
# Created   : 4/17/22
# Last Edit : 4/17/22
# Name      : Internal 1 tick global clock
# Use       : Ran every 1 tick globally for internal systems

#\Interaction Blocker
execute if score $player_has_blocker bbl.storage matches 1 as @e[type=slime,tag=bbl.block_interaction] at @s run function bb:lib/item_effects/block_interaction/schedule/global