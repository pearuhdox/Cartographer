# Datapack  : Black Box Library
# Author(s) : RockNRed
# Created   : 7/21/21
# Last Edit : 7/28/21
# Name      : 1 Tick Clock As Player
# Use       : A looping clock ran as all players at a rate of 1/t for other functions.

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

#Crit checker
function bb:lib/crit_checker/loop
#Y change checker
function bb:lib/tag_functions/y_change

#Item effects
#\Interaction Blocker
execute if score @s bbl.ie.block matches 1.. run function bb:lib/item_effects/block_interaction/loop