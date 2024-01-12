execute if block ~ ~ ~ spawner on passengers run data modify entity @s data.Spawner set value {}
execute if block ~ ~ ~ spawner on passengers run data modify entity @s data.Spawner set from block ~ ~ ~

execute unless block ~ ~ ~ spawner run function cartographer_mimics:trap_spawner/translocating/teleport