setblock ~ ~-1 ~ air replace

playsound minecraft:entity.shulker.open block @a[distance=..16] ~ ~ ~ 1 0.75

particle minecraft:sonic_boom ~ ~-0.35 ~ 0 0 0 0 1 force

kill @e[tag=ca.loot_altar_piece,distance=..0.3]