execute if entity @s[tag=ca.trap_ambush] run function cartographer_mimics:trap_spawner/ambush/analyze
execute if entity @s[tag=ca.trap_control] run function cartographer_mimics:trap_spawner/controlled/analyze
execute if entity @s[tag=ca.trap_hyper] run function cartographer_mimics:trap_spawner/hyper/analyze

execute if entity @s[tag=ca.trap_reforming] if entity @a[distance=..16] run function cartographer_mimics:trap_spawner/reforming/analyze
