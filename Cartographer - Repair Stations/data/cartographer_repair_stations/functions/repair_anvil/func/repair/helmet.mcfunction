
scoreboard players set $item_damage ca.repair_anvil_master 0
scoreboard players set $repair_cost ca.repair_anvil_master 0
scoreboard players set $lapis_cost ca.repair_anvil_master 0

execute if data entity @p[advancements={cartographer_repair_stations:repair_anvil/right_click=true}] Inventory[{Slot:103b}].tag.Damage store result score $item_damage ca.repair_anvil_master run data get entity @p[advancements={cartographer_repair_stations:repair_anvil/right_click=true}] Inventory[{Slot:103b}].tag.Damage
execute if data entity @p[advancements={cartographer_repair_stations:repair_anvil/right_click=true}] Inventory[{Slot:103b}].tag.Damage store result score $repair_cost ca.repair_anvil_master run data get entity @p[advancements={cartographer_repair_stations:repair_anvil/right_click=true}] Inventory[{Slot:103b}].tag.RepairCost
execute if data entity @p[advancements={cartographer_repair_stations:repair_anvil/right_click=true}] Inventory[{Slot:103b}].tag.Damage store result score $lapis_cost ca.repair_anvil_master run data get entity @p[advancements={cartographer_repair_stations:repair_anvil/right_click=true}] Inventory[{Slot:103b}].tag.LapisCost

execute if score $item_damage ca.repair_anvil_master matches 1.. if score $repair_cost ca.repair_anvil_master <= $xp_maximum ca.repair_station_state if score $lapis_cost ca.repair_anvil_master <= $lapis_maximum ca.repair_station_state run function cartographer_repair_stations:repair_anvil/func/repair/item_found/helmet
execute if score $item_damage ca.repair_anvil_master matches 1.. if score $repair_cost ca.repair_anvil_master > $xp_maximum ca.repair_station_state run function cartographer_repair_stations:repair_anvil/func/repair/item_found/too_expensive
execute if score $item_damage ca.repair_anvil_master matches 1.. if score $lapis_cost ca.repair_anvil_master > $lapis_maximum ca.repair_station_state run function cartographer_repair_stations:repair_anvil/func/repair/item_found/too_expensive_lapis
