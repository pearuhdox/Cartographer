playsound minecraft:entity.shulker_bullet.hurt hostile @a[distance=..16] ~ ~ ~ 1 2
playsound minecraft:item.firecharge.use hostile @a[distance=..16] ~ ~ ~ 0.65 2
playsound minecraft:entity.horse.gallop hostile @a[distance=..16] ~ ~ ~ 0.75 1.35

particle minecraft:poof ~ ~0.25 ~ 0.3 0 0.3 0.1 15 normal

tp @s ~ ~ ~ facing entity @p eyes

scoreboard players set @s co_y 10
scoreboard players set @s co_send 12
effect give @s jump_boost 3 6 true
effect give @s slow_falling 1 0 true

function motion:motion/push

tag @s add ca.has_kited

scoreboard players set @s ca.acro_cooldown 3