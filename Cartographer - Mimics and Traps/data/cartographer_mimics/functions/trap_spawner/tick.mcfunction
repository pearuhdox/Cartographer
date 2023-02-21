execute if score @s[tag=ca.trap_spawner,tag=ca.trap_spawn_type] ca.wave_count matches 0 run function cartographer_mimics:trap_spawner/break

execute if score @s[tag=ca.trap_spawner,tag=ca.trap_spawn_type] ca.wave_count matches 1.. if entity @a[distance=..24] run function cartographer_mimics:trap_spawner/spawner_ticking

execute if entity @s[tag=ca.fall_trap_drop_block] if entity @a[distance=..32] run function cartographer_mimics:trap_spawner/fall_spawner/tick

execute unless entity @s[tag=ca.fall_trap_drop_block] unless block ~ ~0.1 ~ spawner run function cartographer_mimics:trap_spawner/purge