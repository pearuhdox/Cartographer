execute if score @s[tag=!watched_die_already] dt.death matches 1.. run function cartographer_charon:watches_you_die
execute if score @s dt.death matches 1.. if score @s dt.respawn matches 3 run function cartographer_charon:respawn

execute if entity @s[nbt={Inventory:[{id:"minecraft:bundle",tag:{DeathBundle:1b}}]}] run function cartographer_charon:bundle/master

execute unless block ~ ~-0.1 ~ #cartographer_core:can_raycast unless block ~ ~ ~ lava run function cartographer_charon:void/home_set

execute if score $collector_count dt.var matches 1.. if score @s charon.kill_test matches 1.. run function cartographer_charon:collector/find_dropped_bag
scoreboard players set @s charon.kill_test 0

execute positioned ~ -165 ~ if entity @s[distance=..100] positioned as @s run function cartographer_charon:void/trigger_void_save

execute if score @s taxes.time matches 6001.. run function cartographer_charon:taxes/progressive/decrease