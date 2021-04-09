execute as @s at @s run particle dust 0.627 1 0.627 0.5 ~ ~1.1 ~ 0.25 0.1 0.25 0 2 normal
execute as @s at @s run particle dust 0.627 1 0.627 0.5 ~ ~1.2 ~ 0.1 0.2 0.1 0 2 normal
execute as @s at @s run execute if entity @a[scores={ca.use_lectern=1..},distance=..5] run clone ~ ~ ~ ~ ~ ~ ~ ~ ~ replace force
execute as @s at @s run execute as @a[scores={ca.use_lectern=1..},distance=..5] at @s run execute if entity @s[scores={lexica_sneak=0}] run function cartographer_core:lexica/manual
execute as @s at @s if block ~ ~ ~ air run kill @s