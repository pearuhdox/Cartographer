execute as @a[distance=3.61..16] at @s run playsound minecraft:ambient.crimson_forest.mood hostile @s ~ ~ ~ 0.25 2

execute unless entity @a[distance=..3.6] run particle minecraft:cloud ~ ~0.25 ~ 0 0 0 0.1 2 force

scoreboard players remove @s ca.effect_cloak 1
