scoreboard players set $altar_protect altar_lock 0

execute as @e[type=#bb:hostile,distance=..16] at @s run function cartographer_loot_additions:loot_altar/protect_branch

execute if score $altar_protect altar_lock matches 1.. unless entity @s[tag=no_pickup] run function cartographer_loot_additions:loot_altar/do_block
execute unless score $altar_protect altar_lock matches 1.. if entity @s[tag=no_pickup] run function cartographer_loot_additions:loot_altar/do_unblock