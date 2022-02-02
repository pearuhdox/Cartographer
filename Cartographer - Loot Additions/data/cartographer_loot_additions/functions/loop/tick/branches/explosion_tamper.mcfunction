scoreboard players set $loot_frame_explosion ca.var 0
execute if entity @e[type=#cartographer_core:explosive,distance=..3,limit=1] run scoreboard players set $loot_frame_explosion ca.var 1
execute if entity @e[type=#cartographer_core:explosive,distance=3..6,limit=1] unless entity @a[distance=..1.5] run scoreboard players set $loot_frame_explosion ca.var 1

execute if score $loot_frame_explosion ca.var matches 0 if entity @s[tag=ca.loot_frame_explosion] run data modify entity @s Invulnerable set value false
execute if score $loot_frame_explosion ca.var matches 1 if entity @s[tag=!ca.loot_frame_explosion] run data modify entity @s Invulnerable set value true

tag @s remove ca.loot_frame_explosion
execute if score $loot_frame_explosion ca.var matches 1 run tag @s add ca.loot_frame_explosion

