execute as @e[type=glow_item_frame,distance=..8,tag=!ca.loot_structure,nbt={Item:{id:"minecraft:structure_void",tag:{CartoLootStructure:1b}}}] at @s run function cartographer_loot_additions:place/branch

scoreboard players set @s ca.place_frame 0