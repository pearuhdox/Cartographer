execute as @e[type=glow_item_frame,distance=..8,tag=!ca.loot_structure,nbt={Item:{id:"minecraft:structure_void",tag:{CartoCharonStructure:1b}}}] at @s run function cartographer_charon:place/branch

scoreboard players set @s ca.place_charon 0