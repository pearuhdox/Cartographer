
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

#Y change checker
function bb:lib/tag_functions/y_change

#Actionbar spammer
execute if score @s bbl.actionbar_spam_mute matches 1.. run scoreboard players remove @s bbl.actionbar_spam_mute 1

#Item effects
#\Interaction Blocker
execute if score @s bbl.ie.block matches 1.. run function bb:lib/item_effects/block_interaction/loop
