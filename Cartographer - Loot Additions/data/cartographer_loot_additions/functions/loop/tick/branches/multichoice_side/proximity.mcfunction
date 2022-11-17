execute unless entity @a[gamemode=creative,distance=..10] unless data entity @s Item.id run function cartographer_loot_additions:multichoice/despawn_frame
execute if score $setup_mode ca.gamerule matches 1.. if entity @a[gamemode=creative,distance=..10] unless data entity @s Item.id run function cartographer_loot_additions:multichoice/revert
