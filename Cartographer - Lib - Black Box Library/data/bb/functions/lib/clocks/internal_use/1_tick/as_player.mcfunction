# Datapack  : Black Box Library
# Author(s) : RockNRed
# Created   : 4/17/22
# Last Edit : 4/17/22
# Name      : Internal 1 tick as_player clock
# Use       : Ran every 1 tick as every player for internal systems

#Remove sliding tag
function bb:lib/sliding_down_honey/tag_remove

#Initialize
#\By lack of tag
execute unless entity @s[tag=bbl.initialized] run function bb:sys/init/player

#Relog check
execute if score @s bbl.relog matches 1.. run function bb:sys/relog

#Inventory changed
execute if entity @s[tag=bbl.inventory_changing] run function bb:lib/tag_functions/inventory_changed/tag

#Slot changed
function bb:lib/tag_functions/slot_changed/loop

#Gamemode changed
function bb:lib/tag_functions/gamemode_changed/loop

#Crit checker
function bb:lib/crit_checker/loop
#Y change checker
function bb:lib/tag_functions/y_change

#Item effects
#\Interaction Blocker
execute if score @s bbl.ie.block matches 1.. run function bb:lib/item_effects/block_interaction/loop