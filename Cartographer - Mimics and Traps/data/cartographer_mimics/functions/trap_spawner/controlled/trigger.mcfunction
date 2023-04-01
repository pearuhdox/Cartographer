scoreboard players remove @s ca.wave_count 1

execute if score @s ca.wave_count matches 0 run playsound minecraft:item.firecharge.use block @a[distance=..16] ~ ~ ~ 1 0.75
execute if score @s ca.wave_count matches 0 run playsound minecraft:block.fire.extinguish block @a[distance=..16] ~ ~ ~ 1 0.75
execute if score @s ca.wave_count matches 0 run particle minecraft:large_smoke ~ ~0.5 ~ 0.4 0.2 0.4 0.05 8 normal

execute unless score @s ca.wave_count matches 0 run playsound minecraft:item.firecharge.use block @a[distance=..16] ~ ~ ~ 1 0.75
execute unless score @s ca.wave_count matches 0 run particle minecraft:large_smoke ~ ~0.5 ~ 0.4 0.2 0.4 0.05 8 normal

data modify block ~ ~0.1 ~ MinSpawnDelay set value 32767
data modify block ~ ~0.1 ~ MaxSpawnDelay set value 32767
execute if entity @s[tag=ca.spawned_once] run data modify block ~ ~0.1 ~ Delay set value 0
execute unless entity @s[tag=ca.spawned_once] run data modify block ~ ~0.1 ~ Delay set value 32767

tag @s add ca.swap_potential
tag @s add ca.spawned_once