scoreboard players remove $los_delta_creeper ca.raycast 1

execute if entity @a[distance=..1.75,gamemode=!creative,gamemode=!spectator] run tag @s add ca.delta_creeper_fuse_primed
execute if entity @a[distance=..1.75,gamemode=!creative,gamemode=!spectator] run scoreboard players set $los_delta_creeper ca.raycast 0

execute unless block ^ ^ ^ #cartographer_core:can_raycast run scoreboard players set $los_delta_creeper ca.raycast 0

execute if score $los_delta_creeper ca.raycast matches 1.. positioned ^ ^ ^0.5 run function cartographer_core:helper/delta/los_check_rec