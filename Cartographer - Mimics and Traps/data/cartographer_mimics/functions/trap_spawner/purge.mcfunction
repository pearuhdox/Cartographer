execute if entity @s[tag=ca.trap_slowbreak] run function cartographer_mimics:trap_spawner/slowbreak/break

execute if entity @s[tag=ca.trap_falling] run function cartographer_mimics:trap_spawner/fall_spawner/trigger

execute if entity @s[tag=ca.trap_redstone] unless score @s ca.trap_timer matches 1.. run function cartographer_mimics:trap_spawner/redstone_spawner/prime
execute if entity @s[tag=ca.trap_redstone] if score @s ca.trap_timer matches 1.. run function cartographer_mimics:trap_spawner/redstone_spawner/ticking

execute unless entity @s[tag=ca.trap_redstone] unless entity @s[tag=ca.trap_translocating] on passengers run kill @s
execute unless entity @s[tag=ca.trap_redstone] unless entity @s[tag=ca.trap_translocating] run kill @s