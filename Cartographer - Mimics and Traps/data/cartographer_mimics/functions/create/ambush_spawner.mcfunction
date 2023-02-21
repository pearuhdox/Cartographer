execute unless entity @e[type=marker,tag=ca.trap_spawner,limit=1,sort=nearest,distance=..2] run function cartographer_mimics:create/trap_spawner_call

execute if block ~ ~-0.2 ~ spawner positioned ~ ~-0.2 ~ run tag @e[type=marker,tag=ca.trap_spawner,limit=1,sort=nearest,distance=..2] add ca.trap_ambush
execute if block ~ ~-0.2 ~ spawner positioned ~ ~-0.2 ~ run tag @e[type=marker,tag=ca.trap_spawner,limit=1,sort=nearest,distance=..2] add ca.trap_spawn_type

execute store result score $count ca.wave_count run data get entity @s SelectedItem.Count
scoreboard players operation @e[type=marker,tag=ca.trap_spawner,limit=1,sort=nearest,distance=..2] ca.wave_count = $count ca.wave_count

execute if block ~ ~-0.2 ~ spawner if entity @e[type=marker,tag=ca.trap_spawner,limit=1,sort=nearest,distance=..2] run tellraw @s [{"text":"The Trap Spawner you are standing on is now an Ambush Spawner. It has ","color":"aqua","italic":false},{"score":{"name":"$count","objective":"ca.wave_count"},"color":"yellow","bold":true},{"text":" activations.","color":"aqua"}]