execute as @e[type=item_frame,distance=..15,tag=repair_sign] at @s run function cartographer_repair_stations:delete

tellraw @s[distance=..7] {"text":"Deleting the Nearest Repair Station. (This will leave the blocks, but remove the entities.)","color":"red","italic":false}
