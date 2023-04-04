execute if score @s[tag=ca.trap_spawner,tag=ca.trap_spawn_type] ca.wave_count matches 0 run function cartographer_mimics:trap_spawner/break

execute if score @s[tag=ca.trap_spawner,tag=ca.trap_spawn_type] ca.wave_count matches 1.. if entity @a[distance=..24] run function cartographer_mimics:trap_spawner/spawner_ticking

execute if entity @s[tag=ca.trap_spawner,tag=ca.disguise_armed,tag=ca.trap_disguise] if entity @a[distance=..16] run function cartographer_mimics:trap_spawner/disguise_spawner/analyze
execute if entity @s[tag=ca.trap_spawner,tag=ca.trap_slowbreak] if entity @a[distance=..8] run function cartographer_mimics:trap_spawner/slowbreak/tick

execute if entity @s[tag=ca.fall_trap_drop_block] if entity @a[distance=..32] run function cartographer_mimics:trap_spawner/fall_spawner/tick
execute unless entity @s[tag=ca.fall_trap_drop_block] unless block ~ ~0.1 ~ spawner run function cartographer_mimics:trap_spawner/purge

execute if entity @s[tag=ca.trap_disguise] if score @s ca.trap_timer matches 1.. run function cartographer_mimics:trap_spawner/disguise_spawner/tick