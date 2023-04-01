scoreboard players set $creeper_target ca.var 0
execute on target run scoreboard players set $creeper_target ca.var 1

execute if score $creeper_target ca.var matches 1.. if entity @a[distance=..3,gamemode=!creative,gamemode=!spectator] run tag @s add ca.delta_creeper_fuse_primed

execute if entity @a[distance=..5] if entity @s[nbt={ignited:1b}] run tag @s add ca.lock_fuse_primed
execute if entity @s[tag=ca.lock_fuse_primed] run tag @s add ca.delta_creeper_fuse_primed

execute if entity @s[tag=ca.delta_creeper_fuse_primed,tag=!ca.lock_fuse_primed] run function cartographer_core:helper/delta/player_check_branch

execute if entity @s[tag=ca.delta_creeper_fuse_primed] run function cartographer_core:helper/delta/count_fuse

execute unless entity @s[tag=ca.delta_creeper_fuse_primed] run scoreboard players set @s ca.delta_fuse 0