execute if block ~ ~-0.5 ~ #cartographer_core:can_raycast run scoreboard players set @s dt.home_cooldown 4

execute unless block ~ ~-0.1 ~ #cartographer_core:can_raycast unless block ~ ~ ~ lava unless score @s dt.death matches 1.. if score @s dt.respawn matches 3.. unless score @s dt.home_cooldown matches 1.. run function cartographer_charon:void/home_set

execute unless score $death_disabled charon.gmr matches 1.. if score @s[tag=!watched_die_already] dt.death matches 1.. run function cartographer_charon:watches_you_die

execute unless score $death_disabled charon.gmr matches 1.. unless entity @s[tag=ca.can_self_revive,scores={ca.self_revive_cooldown=0}] if score @s dt.death matches 1.. if score @s dt.respawn matches 3 run function cartographer_charon:respawn
execute unless score $death_disabled charon.gmr matches 1.. if entity @s[tag=ca.can_self_revive,scores={ca.self_revive_cooldown=1..}] if score @s dt.death matches 1.. if score @s dt.respawn matches 3 run function cartographer_charon:respawn

execute unless score $death_disabled charon.gmr matches 1.. if entity @s[tag=ca.can_self_revive,scores={ca.self_revive_cooldown=0}] if score @s dt.death matches 1.. if score @s dt.respawn matches 3 run function cartographer_charon:multiplayer/self_revive/respawn

execute if score $death_disabled charon.gmr matches 1.. if score @s dt.death matches 1.. run scoreboard players set @s dt.death 0

execute if entity @s[nbt={Inventory:[{id:"minecraft:bundle",tag:{DeathBundle:1b}}]}] run function cartographer_charon:bundle/master

execute if score $collector_count dt.var matches 1.. if score @s charon.kill_test matches 1.. run function cartographer_charon:collector/find_dropped_bag
scoreboard players set @s charon.kill_test 0

execute if score @s ca.place_charon matches 1.. run function cartographer_charon:place/master

execute if score @s dt.home_cooldown matches 1.. run scoreboard players remove @s dt.home_cooldown 1

execute positioned ~ -165 ~ if entity @s[distance=..100] positioned as @s run function cartographer_charon:void/trigger_void_save

execute if score @s taxes.time matches 6001.. run function cartographer_charon:taxes/progressive/decrease

execute if score @s ca.self_revive_timer matches 1 run function cartographer_charon:self_revive/out_of_time
execute if score @s ca.self_revive_timer matches 1.. run scoreboard players remove @s ca.self_revive_timer 1
execute if score @s ca.self_revive_cooldown matches 1.. run scoreboard players remove @s ca.self_revive_cooldown 1
execute unless score @s ca.self_revive_cooldown matches 0.. run scoreboard players set @s ca.self_revive_cooldown 0