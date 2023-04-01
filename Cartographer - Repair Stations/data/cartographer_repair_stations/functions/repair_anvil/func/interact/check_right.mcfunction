execute if entity @s[tag=ca.repair_anvil_int.repair.helmet] if data entity @s interaction if entity @p[advancements={cartographer_repair_stations:repair_anvil/right_click=true}] run function cartographer_repair_stations:repair_anvil/func/repair/helmet
execute if entity @s[tag=ca.repair_anvil_int.repair.chestplate] if data entity @s interaction if entity @p[advancements={cartographer_repair_stations:repair_anvil/right_click=true}] run function cartographer_repair_stations:repair_anvil/func/repair/chestplate
execute if entity @s[tag=ca.repair_anvil_int.repair.mainhand] if data entity @s interaction if entity @p[advancements={cartographer_repair_stations:repair_anvil/right_click=true}] run function cartographer_repair_stations:repair_anvil/func/repair/mainhand

execute if entity @s[tag=ca.repair_anvil_int.repair.leggings] if data entity @s interaction if entity @p[advancements={cartographer_repair_stations:repair_anvil/right_click=true}] run function cartographer_repair_stations:repair_anvil/func/repair/leggings
execute if entity @s[tag=ca.repair_anvil_int.repair.boots] if data entity @s interaction if entity @p[advancements={cartographer_repair_stations:repair_anvil/right_click=true}] run function cartographer_repair_stations:repair_anvil/func/repair/boots
execute if entity @s[tag=ca.repair_anvil_int.repair.offhand] if data entity @s interaction if entity @p[advancements={cartographer_repair_stations:repair_anvil/right_click=true}] run function cartographer_repair_stations:repair_anvil/func/repair/offhand

data remove entity @s interaction
