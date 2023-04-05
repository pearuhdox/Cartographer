execute unless entity @e[type=block_display,tag=ca.trap_spawner,limit=1,sort=nearest,distance=..2] run function cartographer_mimics:create/trap_spawner_call

execute store result score $count ca.wave_count run data get block ~ ~-0.2 ~ SpawnPotentials

execute if block ~ ~-0.2 ~ spawner positioned ~ ~-0.2 ~ as @e[type=block_display,tag=ca.trap_spawner,limit=1,sort=nearest,distance=..2] at @s run function cartographer_mimics:create/branches/control_potentials_branch

execute if block ~ ~-0.2 ~ spawner if entity @e[type=block_display,tag=ca.trap_spawner,limit=1,sort=nearest,distance=..2] run tellraw @p [{"text":"This trap spawner is now a Controlled (Potentials) Spawner.","color":"aqua","italic":false}]