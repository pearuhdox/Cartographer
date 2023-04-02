execute as @e[type=glow_item_frame,distance=..8,tag=!ca.loot_structure,nbt={Item:{id:"minecraft:structure_void",tag:{CartoTrapStructure:1b}}}] at @s run function cartographer_mimics:place/branch

scoreboard players set @s ca.place_trap 0