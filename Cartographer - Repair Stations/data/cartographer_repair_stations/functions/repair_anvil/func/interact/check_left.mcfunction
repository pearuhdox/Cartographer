execute if data entity @s attack if entity @s[tag=ca.repair_anvil_int.anvil] if entity @p[advancements={cartographer_repair_stations:repair_anvil/left_click=true}] run function cartographer_repair_stations:repair_anvil/func/remove_anvil/break

data remove entity @s attack
