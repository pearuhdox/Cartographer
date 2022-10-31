fill ~-1 ~ ~-1 ~1 ~ ~1 air replace cobweb

playsound minecraft:entity.sheep.shear block @a[distance=..8] ~ ~ ~ 1.5 1.5
playsound minecraft:entity.sheep.shear block @a[distance=..8] ~ ~ ~ 1.5 1
playsound minecraft:entity.sheep.shear block @a[distance=..8] ~ ~ ~ 1.5 2

playsound minecraft:block.stone.break block @a[distance=..8] ~ ~ ~ 1 1

particle block minecraft:cobweb ~ ~0.55 ~ 0.65 0.3 0.65 0 50 normal

kill @s
#kill @e[type=falling_block,tag=ca.webbing_falling,distance=..2,limit=5]