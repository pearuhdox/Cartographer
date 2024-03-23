
#Read in playerdata
function bb:lib/pldata/read

#Save prior ticks raw data and inv:save data
data remove storage bbl:pldata sudo_root.working_data.bbl.inventory.past_tick
data modify storage bbl:pldata sudo_root.working_data.bbl.inventory.past_tick set from storage bbl:pldata sudo_root.working_data.bbl.inventory.current_tick

#Save current inventory and inv:save
data remove storage bbl:pldata sudo_root.working_data.bbl.inventory.current_tick
data modify storage bbl:pldata sudo_root.working_data.bbl.inventory.current_tick set from entity @s Inventory

#Save selected slot
execute store result storage bbl:pldata sudo_root.working_data.bbl.inventory.selected_slot int 1 run data get entity @s SelectedItemSlot

#Write out data
function bb:lib/pldata/write


function #minecraft:bbl/slot_changed
function #minecraft:bbl/inventory_or_slot_changed
