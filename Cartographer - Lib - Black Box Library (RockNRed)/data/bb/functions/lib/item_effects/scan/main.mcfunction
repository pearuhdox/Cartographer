# Datapack  : Black Box Library
# Author(s) : RockNRed / PearUhDox
# Created   : 8/11/21
# Last Edit : 8/11/21
# Name      : Scan Main
# Use       : Scans the player's inventory/equipment for items with custom effects.

data remove storage bbl:item_effects sudo_root
data modify storage bbl:item_effects sudo_root.inventory set from entity @s Inventory

data modify storage bbl:item_effects sudo_root.head set from storage bbl:item_effects sudo_root.inventory[{Slot:103b}]
data modify storage bbl:item_effects sudo_root.body set from storage bbl:item_effects sudo_root.inventory[{Slot:102b}]
data modify storage bbl:item_effects sudo_root.legs set from storage bbl:item_effects sudo_root.inventory[{Slot:101b}]
data modify storage bbl:item_effects sudo_root.feet set from storage bbl:item_effects sudo_root.inventory[{Slot:100b}]
data modify storage bbl:item_effects sudo_root.offhand set from storage bbl:item_effects sudo_root.inventory[{Slot:-106b}]
data modify storage bbl:item_effects sudo_root.mainhand set from entity @s SelectedItem

scoreboard players set @s bbl.storage 0
scoreboard players set $player_has_blocker bbl.storage 0
scoreboard players set @s bbl.ie.block 0

execute if data storage bbl:item_effects sudo_root.head.tag.item_effects run function bb:lib/item_effects/scan/scan_head
execute if data storage bbl:item_effects sudo_root.body.tag.item_effects run function bb:lib/item_effects/scan/scan_body
execute if data storage bbl:item_effects sudo_root.legs.tag.item_effects run function bb:lib/item_effects/scan/scan_legs
execute if data storage bbl:item_effects sudo_root.feet.tag.item_effects run function bb:lib/item_effects/scan/scan_feet
execute if data storage bbl:item_effects sudo_root.offhand.tag.item_effects run function bb:lib/item_effects/scan/scan_offhand
execute if data storage bbl:item_effects sudo_root.mainhand.tag.item_effects run function bb:lib/item_effects/scan/scan_mainhand

execute if score @s bbl.ie.block matches 1.. run scoreboard players set $player_has_blocker bbl.storage 1