execute as @a[distance=..2.2] at @s positioned ^ ^ ^1.5 if entity @e[type=giant,tag=station_barrier,distance=..2.2] run particle minecraft:cloud ~ ~1 ~ 0 1 0 0.01 1 normal
execute as @a[distance=..2.2] at @s positioned ^1 ^ ^1.5 if entity @e[type=giant,tag=station_barrier,distance=..2.2] run particle minecraft:cloud ~ ~1 ~ 0 1 0 0.01 1 normal
execute as @a[distance=..2.2] at @s positioned ^-1 ^ ^1.5 if entity @e[type=giant,tag=station_barrier,distance=..2.2] run particle minecraft:cloud ~ ~1 ~ 0 1 0 0.01 1 normal

execute as @a[distance=..2.2] at @s run playsound minecraft:block.fire.extinguish ambient @s ~ ~ ~ 0.3 1.5