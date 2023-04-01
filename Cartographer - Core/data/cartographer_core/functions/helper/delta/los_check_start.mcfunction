scoreboard players set $los_delta_creeper ca.raycast 15

tag @s remove ca.delta_creeper_fuse_primed

execute facing entity @p[distance=..7,gamemode=!creative,gamemode=!spectator] eyes positioned ^ ^ ^ run function cartographer_core:helper/delta/los_check_rec