#Effects
execute if entity @s[tag=trapped] run function cartographer_loot_additions:stand/branch/trapped

execute if score @s la.filled_slots matches 0 run function cartographer_loot_additions:stand/despawn/commit