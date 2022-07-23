effect give @s invisibility 2 1 false

execute as @a[distance=..16] at @s run playsound minecraft:ambient.crimson_forest.mood hostile @s ~ ~ ~ 0.5 2

particle minecraft:cloud ~ ~0.25 ~ 0 0 0 0.1 1 force
particle minecraft:cloud ~ ~0.25 ~ 0 0 0 0.1 1 force

scoreboard players remove @s ca.effect_cloak 1
