execute unless score @s ca.wave_time matches 1.. if score @s ca.wave_count matches 1.. if block ~ ~ ~ spawner on passengers run data modify entity @s data.Spawner set value {}
execute unless score @s ca.wave_time matches 1.. if score @s ca.wave_count matches 1.. if block ~ ~ ~ spawner on passengers run data modify entity @s data.Spawner set from block ~ ~ ~

execute if score @s ca.wave_count matches 1.. unless block ~ ~ ~ spawner run function cartographer_mimics:trap_spawner/reforming/replace

execute if score @s ca.wave_time matches 1 on passengers run function cartographer_mimics:trap_spawner/reforming/reform

execute if score @s ca.wave_time matches 1 unless score @s ca.wave_count matches 1.. on passengers run kill @s
execute if score @s ca.wave_time matches 1 unless score @s ca.wave_count matches 1.. run kill @s

execute if score @s ca.wave_time matches 1.. run scoreboard players remove @s ca.wave_time 1