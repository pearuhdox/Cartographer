execute if entity @a[gamemode=!spectator,gamemode=!creative,distance=..6.5] run function cartographer_charon:respawnable/raycast_wrapper

execute unless entity @a[gamemode=!creative,gamemode=!spectator,distance=..6.5] run tag @s add no_near_player

execute unless entity @s[tag=no_near_player] run function cartographer_charon:respawnable/player_counter

execute if entity @s[tag=no_near_player] run scoreboard players set @s ca.charon_statue_ct 0
execute if entity @s[tag=no_near_player] run scoreboard players set @s ca.charon_statue_ct_old 0