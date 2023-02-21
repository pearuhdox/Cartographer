execute unless entity @e[type=marker,tag=ca.trap_spawner,limit=1,sort=nearest,distance=..2] run function cartographer_mimics:create/trap_spawner_call

execute if block ~ ~-0.2 ~ spawner positioned ~ ~-0.2 ~ run tag @e[type=marker,tag=ca.trap_spawner,limit=1,sort=nearest,distance=..2] add ca.trap_falling

execute if block ~ ~-0.2 ~ spawner if entity @e[type=marker,tag=ca.trap_spawner,limit=1,sort=nearest,distance=..2] run tellraw @s [{"text":"The Trap Spawner you are standing on is now an Falling Spawner.","color":"aqua","italic":false}]