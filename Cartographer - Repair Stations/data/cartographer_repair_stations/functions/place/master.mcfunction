execute as @e[type=glow_item_frame,distance=..8,tag=!ca.loot_structure,nbt={Item:{id:"minecraft:structure_void",tag:{CartoRepairStructure:1b}}}] at @s run function cartographer_repair_stations:place/branch

scoreboard players set @s ca.place_repair 0