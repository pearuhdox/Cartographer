effect give @s invisibility 2 1 false

execute as @a[distance=..16] at @s run playsound minecraft:ambient.crimson_forest.mood hostile @s ~ ~ ~ 0.5 2

scoreboard players remove @s effect_cloaked 1
