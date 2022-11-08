scoreboard players set $los_deathbomb ca.raycast 15

tag @s remove ca.deathbomb_fuse_primed

execute facing entity @p[distance=..7,gamemode=!creative,gamemode=!spectator] eyes positioned ^ ^ ^ run function cartographer_mob_abilities:passive/deathbomb/los_check_rec