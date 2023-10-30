
#Remove sliding tag
function bb:lib/sliding_down_honey/tag_remove

#Initialize
#\Repeated
execute unless entity @s[tag=bbl.initialized.repeated] run function bb:lib/init/repeated
#\Single
execute unless entity @s[tag=bbl.initialized.single] run function bb:lib/init/single

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
#execute if score @s bbl.ie.block matches 1.. run function bb:lib/item_effects/block_interaction/loop

#Actions
#\Dropped KB
execute if score @s bbl.action.drop_kb matches 1.. run function #minecraft:bbl/action/dropped_kb
#\Placed stair
execute if score @s bbl.action.place_spruce_stair matches 1.. run function #minecraft:bbl/action/placed_spruce_stair
#\Place barrel
execute if score @s bbl.action.place_barrel matches 1.. run function #minecraft:bbl/action/placed_barrel

#Movement checker
#Normal movement
execute if score @s bbl.move.walk matches 1.. run function bb:lib/move_detector/input/walk
execute if score @s bbl.move.sprint matches 1.. run function bb:lib/move_detector/input/sprint
execute if score @s bbl.move.crouch matches 1.. run function bb:lib/move_detector/input/crouch
execute if score @s bbl.move.climb matches 1.. run function bb:lib/move_detector/input/climb
execute if score @s bbl.move.swim matches 1.. run function bb:lib/move_detector/input/swim
execute if score @s bbl.move.horse matches 1.. run function bb:lib/move_detector/input/horse
execute if score @s bbl.move.walk_underwater matches 1.. run function bb:lib/move_detector/input/walk_underwater
#Mute timer
execute if score @s bbl.move.mute matches 1.. run function bb:lib/move_detector/mute_loop
#Mouse listener
execute if score @s bbl.move.mouse_angle.listen matches 1.. if score @s bbl.move.mute matches 0 run function bb:lib/move_detector/mouse_loop
