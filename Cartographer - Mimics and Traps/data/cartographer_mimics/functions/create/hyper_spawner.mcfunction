execute unless entity @e[type=block_display,tag=ca.trap_spawner,limit=1,sort=nearest,distance=..2] run function cartographer_mimics:create/trap_spawner_call

execute store result score $count ca.wave_count run data get entity @s SelectedItem.Count
execute if score $count ca.wave_count matches 0 run scoreboard players set $count ca.wave_count 1

execute if block ~ ~-0.2 ~ spawner positioned ~ ~-0.2 ~ as @e[type=block_display,tag=ca.trap_spawner,limit=1,sort=nearest,distance=..2] at @s run function cartographer_mimics:create/branches/hyper_branch

execute if block ~ ~-0.2 ~ spawner if entity @e[type=block_display,tag=ca.trap_spawner,limit=1,sort=nearest,distance=..2] run tellraw @p [{"text":"This trap spawner is now a Hyper Spawner. It has ","color":"aqua","italic":false},{"score":{"name":"$count","objective":"ca.wave_count"},"color":"yellow","bold":true},{"text":" activations.","color":"aqua"}]