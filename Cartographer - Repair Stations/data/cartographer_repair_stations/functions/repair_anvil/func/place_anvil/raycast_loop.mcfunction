scoreboard players remove $raycast_steps ca.repair_anvil_master 1

execute if block ~ ~ ~ #minecraft:anvil run function cartographer_repair_stations:repair_anvil/func/place_anvil/found

execute if score $raycast_steps ca.repair_anvil_master matches 1.. positioned ^ ^ ^.05 run function cartographer_repair_stations:repair_anvil/func/place_anvil/raycast_loop

#particle block_marker barrier