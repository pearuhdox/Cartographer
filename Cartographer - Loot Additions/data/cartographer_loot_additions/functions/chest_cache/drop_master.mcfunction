data modify storage cartographer_loot_additions:chest_cache Items set value []

data modify storage cartographer_loot_additions:chest_cache Items set from entity @s Item.tag.StoredItems

scoreboard players set $cache_loot_spread ca.var 0

execute align xyz positioned ~0.5 ~0.5 ~0.5 if data storage cartographer_loot_additions:chest_cache Items[0] run function cartographer_loot_additions:chest_cache/drop/rec

execute align xyz positioned ~0.5 ~0.5 ~0.5 run function cartographer_loot_additions:chest_cache/drop/vfx

kill @s