
scoreboard players set $item_damage ca.repair_anvil_master 0
execute if data entity @p[advancements={cartographer_repair_stations:repair_anvil/right_click=true}] Inventory[{Slot:101b}].tag.Damage store result score $item_damage ca.repair_anvil_master run data get entity @p[advancements={cartographer_repair_stations:repair_anvil/right_click=true}] Inventory[{Slot:101b}].tag.Damage
execute if score $item_damage ca.repair_anvil_master matches 1.. run function cartographer_repair_stations:repair_anvil/func/repair/item_found/leggings
 