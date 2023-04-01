execute if entity @a[distance=..3,gamemode=!creative,gamemode=!spectator] run tag @s add ca.deathbomb_fuse_primed
execute if entity @s[tag=ca.deathbomb_fuse_primed] run function cartographer_mob_abilities:death/deathbomb/player_check_branch

execute if entity @s[tag=ca.deathbomb_fuse_primed] run function cartographer_mob_abilities:death/deathbomb/count_fuse
execute unless entity @s[tag=ca.deathbomb_fuse_primed] run scoreboard players set @s ca.deathbomb_fuse 0