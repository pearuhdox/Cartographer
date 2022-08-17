scoreboard players remove @s ca.soul_count 1

particle minecraft:sculk_soul ~ ~1.25 ~ 0.1 0.1 0.1 0.02 8 normal
particle minecraft:sculk_soul ~ ~1.65 ~ 0.25 0.15 0.25 0.01 15 normal

execute unless score @s ca.soul_count matches 0 run playsound minecraft:block.sculk_sensor.break player @a[distance=..16] ~ ~ ~ 1 0.65
execute unless score @s ca.soul_count matches 0 run playsound minecraft:entity.allay.death player @a[distance=..16] ~ ~ ~ 0.5 2