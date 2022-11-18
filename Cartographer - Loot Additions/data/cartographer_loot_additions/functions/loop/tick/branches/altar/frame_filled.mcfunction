execute unless entity @a[gamemode=creative,distance=..10] unless data entity @s Item.id run function cartographer_loot_additions:altar/despawn_frame
execute if score $setup_mode ca.gamerule matches 1.. if entity @a[gamemode=creative,distance=..10] unless data entity @s Item.id run function cartographer_loot_additions:altar/revert
execute if entity @a[gamemode=!creative,distance=..16] run function cartographer_loot_additions:altar/protect

#Caches without a head are destroyed.
execute if entity @s[tag=cache] unless block ~ ~ ~ player_head run function cartographer_loot_additions:altar/despawn_frame