playsound minecraft:block.chest.open hostile @a[distance=..16] ~ ~ ~ 2 0.5
playsound minecraft:entity.evoker_fangs.attack hostile @a[distance=..16] ~ ~ ~ 0.65 0.7
playsound minecraft:entity.evoker_fangs.attack hostile @a[distance=..16] ~ ~ ~ 0.65 0.1
playsound minecraft:entity.evoker_fangs.attack hostile @a[distance=..16] ~ ~ ~ 0.65 1.3
playsound minecraft:entity.evoker_fangs.attack hostile @a[distance=..16] ~ ~ ~ 0.65 1.6

particle minecraft:shriek 0 ~ ~0.8 ~ 0 0 0 0 1 force
particle minecraft:shriek 3 ~ ~0.8 ~ 0 0 0 0 1 force
particle minecraft:shriek 6 ~ ~0.8 ~ 0 0 0 0 1 force

tag @s add ca.revealed

data modify entity @s Glowing set value 1b