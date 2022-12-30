particle minecraft:sculk_soul ~ ~-0.5 ~ 0.2 0.3 0.2 0.03 1 normal

execute unless data entity @s Item run function cartographer_charon:death_drop/remove

execute unless score @a[distance=..5,gamemode=!spectator,gamemode=!creative,limit=1,sort=nearest] dt.respawn matches 5.. run data modify entity @s Fixed set value 1b
execute if score @a[distance=..5,gamemode=!spectator,gamemode=!creative,limit=1,sort=nearest] dt.respawn matches 5.. run data modify entity @s Fixed set value 0b

execute unless block ~ ~0.5 ~ #cartographer_core:can_raycast unless block ~ ~0.5 ~ lava run data modify entity @s Fixed set value 1b
execute if block ~ ~-0.5 ~ #cartographer_core:can_raycast run data modify entity @s Fixed set value 1b