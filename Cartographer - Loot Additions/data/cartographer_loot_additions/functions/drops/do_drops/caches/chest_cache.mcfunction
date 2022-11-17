data modify storage cartographer_loot_additions:chest_cache Items set value []
execute as @e[limit=1,sort=nearest,type=#cartographer_core:item_frames,tag=cache,distance=..3] at @s run function cartographer_loot_additions:drops/do_drops/caches/chest_cache/frame

scoreboard players set $cache_loot_spread ca.var 0

execute align xyz positioned ~0.5 ~0.5 ~0.5 if data storage cartographer_loot_additions:chest_cache Items[0] run function cartographer_loot_additions:drops/do_drops/caches/chest_cache/rec

execute align xyz positioned ~0.5 ~0.5 ~0.5 run function cartographer_loot_additions:drops/do_drops/caches/chest_cache/vfx

tag @s add loot_add_custom