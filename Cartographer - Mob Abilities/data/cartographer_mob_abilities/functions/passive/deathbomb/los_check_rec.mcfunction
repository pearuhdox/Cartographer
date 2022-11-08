scoreboard players remove $los_deathbomb ca.raycast 1

execute if entity @a[distance=..1.75,gamemode=!creative,gamemode=!spectator] run tag @s add ca.deathbomb_fuse_primed
execute if entity @a[distance=..1.75,gamemode=!creative,gamemode=!spectator] run scoreboard players set $los_deathbomb ca.raycast 0

execute unless block ^ ^ ^ #cartographer_core:can_raycast run scoreboard players set $los_deathbomb ca.raycast 0

execute if score $los_deathbomb ca.raycast matches 1.. positioned ^ ^ ^0.5 run function cartographer_mob_abilities:passive/deathbomb/los_check_rec