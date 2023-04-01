scoreboard players remove @s ca.wave_count 1

execute if score @s ca.wave_count matches 0 run playsound minecraft:item.firecharge.use block @a[distance=..16] ~ ~ ~ 1 0.75
execute if score @s ca.wave_count matches 0 run playsound minecraft:block.fire.extinguish block @a[distance=..16] ~ ~ ~ 1 0.75
execute if score @s ca.wave_count matches 0 run particle minecraft:large_smoke ~ ~0.5 ~ 0.4 0.2 0.4 0.05 8 normal

execute unless score @s ca.wave_count matches 0 run playsound minecraft:item.firecharge.use block @a[distance=..16] ~ ~ ~ 1 0.75
execute unless score @s ca.wave_count matches 0 run particle minecraft:large_smoke ~ ~0.5 ~ 0.4 0.2 0.4 0.05 8 normal

data modify block ~ ~0.1 ~ MinSpawnDelay set value 20
data modify block ~ ~0.1 ~ MaxSpawnDelay set value 20
data modify block ~ ~0.1 ~ Delay set value 20

execute if entity @s[tag=ca.trap_potentials] run function cartographer_mimics:trap_spawner/potentials