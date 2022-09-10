playsound minecraft:entity.shulker_bullet.hurt hostile @a[distance=..16] ~ ~ ~ 0.4 2
playsound minecraft:item.firecharge.use hostile @a[distance=..16] ~ ~ ~ 0.4 2

particle minecraft:poof ~ ~0.1 ~ 0.15 0 0.15 0.1 5 normal

scoreboard players set @s co_y 4
scoreboard players set @s co_send 6

function motion:motion/push

tag @s remove on_ground