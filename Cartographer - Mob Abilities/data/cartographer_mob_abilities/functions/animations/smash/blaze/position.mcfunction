execute unless entity @a[distance=..16] run scoreboard players set @s co_send 20
execute if entity @a[distance=..16] unless entity @a[distance=..14] run scoreboard players set @s co_send 18
execute if entity @a[distance=..14] unless entity @a[distance=..12] run scoreboard players set @s co_send 16
execute if entity @a[distance=..12] unless entity @a[distance=..10] run scoreboard players set @s co_send 12
execute if entity @a[distance=..10] run scoreboard players set @s co_send 8

scoreboard players set @s co_y 4

function motion:motion/push

playsound minecraft:entity.ravager.attack hostile @a[distance=..24] ~ ~ ~ 5 0.85
particle minecraft:crit ~ ~3 ~ 0.7 2 0.7 0 100
