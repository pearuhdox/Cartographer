data modify entity @s Size set value 0

execute anchored eyes run particle minecraft:poof ^ ^ ^0.5 0.5 0.5 0.5 0.06 40 normal

execute if entity @s[type=slime] run particle minecraft:block minecraft:slime_block ~ ~ ~ 0.5 0.5 0.5 0.06 20 normal
execute if entity @s[type=magma_cube] run particle minecraft:block minecraft:magma_block ~ ~ ~ 0.5 0.5 0.5 0.06 20 normal

execute if entity @s[type=slime] run playsound minecraft:block.honey_block.step hostile @a[distance=..16] ~ ~ ~ 1 0.5
execute if entity @s[type=magma_cube] run playsound minecraft:block.honey_block.step hostile @a[distance=..16] ~ ~ ~ 1 0.5

execute if entity @s[type=phantom] run particle minecraft:witch ~ ~ ~ 0.5 0.5 0.5 0.06 15 normal

kill @s