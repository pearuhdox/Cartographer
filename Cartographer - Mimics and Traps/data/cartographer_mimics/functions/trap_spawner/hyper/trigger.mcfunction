scoreboard players remove @s ca.wave_count 1

execute unless entity @s[tag=ca.spawned_once] run playsound minecraft:entity.evoker.prepare_attack block @a ~ ~ ~ 0.75 1

execute if score @s ca.wave_count matches 0 run playsound minecraft:item.firecharge.use block @a[distance=..16] ~ ~ ~ 1 0.75
execute if score @s ca.wave_count matches 0 run playsound minecraft:block.fire.extinguish block @a[distance=..16] ~ ~ ~ 1 0.75
execute if score @s ca.wave_count matches 0 run particle minecraft:large_smoke ~ ~0.5 ~ 0.4 0.2 0.4 0.05 8 normal

execute unless score @s ca.wave_count matches 0 run playsound minecraft:item.firecharge.use block @a[distance=..16] ~ ~ ~ 1 0.75
execute unless score @s ca.wave_count matches 0 run particle minecraft:large_smoke ~ ~0.5 ~ 0.4 0.2 0.4 0.05 8 normal

data modify block ~ ~0.1 ~ MinSpawnDelay set value 1
data modify block ~ ~0.1 ~ MaxSpawnDelay set value 1
data modify block ~ ~0.1 ~ SpawnCount set value 1
data modify block ~ ~0.1 ~ MaxNearbyEntities set value 100
data modify block ~ ~0.1 ~ Delay set value 1

tag @s add ca.spawned_once