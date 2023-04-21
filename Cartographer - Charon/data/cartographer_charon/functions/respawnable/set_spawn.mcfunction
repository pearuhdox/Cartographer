execute if entity @a[gamemode=!spectator,gamemode=!creative,distance=..8] positioned ^ ^ ^2 run function cartographer_charon:respawnable/raycast_start

execute unless entity @a[gamemode=!spectator,gamemode=!creative,distance=..8] run tag @s add no_near_player