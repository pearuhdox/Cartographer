execute if entity @s[tag=ca.trap_slowbreak] run function cartographer_mimics:trap_spawner/slowbreak/break

execute if entity @s[tag=ca.trap_falling] run function cartographer_mimics:trap_spawner/fall_spawner/trigger

execute if entity @s[tag=ca.trap_redstone] unless score @s ca.trap_timer matches 1.. run function cartographer_mimics:trap_spawner/redstone_spawner/prime
execute if entity @s[tag=ca.trap_redstone] if score @s ca.trap_timer matches 1.. run function cartographer_mimics:trap_spawner/redstone_spawner/ticking

execute if entity @s[tag=ca.trap_spawn_type] on passengers on passengers on passengers on passengers on passengers run kill @s
execute if entity @s[tag=ca.trap_spawn_type] on passengers on passengers on passengers on passengers run kill @s
execute if entity @s[tag=ca.trap_spawn_type] on passengers on passengers on passengers run kill @s
execute if entity @s[tag=ca.trap_spawn_type] on passengers on passengers run kill @s
execute if entity @s[tag=ca.trap_spawn_type] on passengers run kill @s
kill @s