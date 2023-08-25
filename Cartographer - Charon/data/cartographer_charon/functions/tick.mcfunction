scoreboard players set $dead_player dt.var 0
execute as @a if score @s dt.respawn matches 0..10 run scoreboard players set $dead_player dt.var 1

execute as @a at @s run function cartographer_charon:player_tick
execute as 00000001-0000-0007-0000-001b0000000b at @s if entity @a[distance=..10] run function cartographer_charon:vill/tick

#Run this for the trader animations
execute if score $trader charon.gmr matches 1.. as 00000007-0000-0001-0000-000b0000001b at @s if entity @a[distance=..32] run function cartographer_charon:trader/animations