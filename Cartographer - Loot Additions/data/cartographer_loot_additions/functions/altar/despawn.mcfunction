execute unless block ~ ~ ~ emerald_block run playsound minecraft:entity.shulker.death block @a[distance=..15] ~ ~ ~ 1 2

kill @e[type=item_frame,tag=loot_altar_holder,distance=..2,limit=1,sort=nearest]

particle minecraft:end_rod ~ ~1 ~ 0 0 0 0.05 10 normal
particle minecraft:portal ~ ~0.5 ~ 0 0 0 1 50 normal

kill @s