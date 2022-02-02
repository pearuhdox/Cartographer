execute unless entity @a[gamemode=creative,distance=..10] unless data entity @s Item.id run function cartographer_loot_additions:altar/despawn_frame
execute if entity @a[gamemode=creative,distance=..10] unless data entity @s Item.id run function cartographer_loot_additions:altar/revert
execute if entity @a[gamemode=!creative,distance=..16] run function cartographer_loot_additions:altar/protect