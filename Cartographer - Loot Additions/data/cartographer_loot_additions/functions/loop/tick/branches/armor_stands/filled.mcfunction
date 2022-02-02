#Count the number of occupied slots
function cartographer_loot_additions:stand/check_slots

execute unless score @s la.filled_comp matches 0.. run scoreboard players set @s la.filled_comp -1

execute unless entity @a[distance=..10,gamemode=creative] if entity @s[tag=trapped] if score @s la.filled_comp > @s la.filled_slots run function cartographer_loot_additions:stand/force_despawn

#Set occupied slots to a control value after the trap check. We compare with this in the future.
scoreboard players operation @s la.filled_comp = @s la.filled_slots

execute if block ~ ~-0.25 ~ air run function cartographer_loot_additions:stand/force_despawn
execute if score @s la.filled_slots matches 0 unless entity @s[tag=trapped] unless entity @a[gamemode=creative,distance=..10] run function cartographer_loot_additions:stand/despawn

execute as @s[tag=random_main] if entity @a[gamemode=!creative,gamemode=!spectator,distance=..48] run function cartographer_loot_additions:loot/randomize_stand_main
execute as @s[tag=random_off] if entity @a[gamemode=!creative,gamemode=!spectator,distance=..48] run function cartographer_loot_additions:loot/randomize_stand_off
