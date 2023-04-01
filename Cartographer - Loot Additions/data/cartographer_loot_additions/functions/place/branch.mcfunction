execute as @s[nbt={Item:{id:"minecraft:structure_void",tag:{CartoLootAltar:1b}}}] at @s run function cartographer_loot_additions:place/altar

execute as @s[nbt={Item:{id:"minecraft:structure_void",tag:{CartoMultichoice:1b}}}] at @s run function cartographer_loot_additions:place/multichoice

execute as @s[nbt={Item:{id:"minecraft:structure_void",tag:{CartoSoulChest:1b}}}] at @s run function cartographer_loot_additions:place/soul_chest

execute as @s[nbt={Item:{id:"minecraft:structure_void",tag:{CartoLockedChest:1b}}}] at @s run function cartographer_loot_additions:place/locked_chest

execute as @s[tag=ca.awaiting_lock_block] if data entity @s Item.id at @s run function cartographer_loot_additions:locked_chest/await_key
