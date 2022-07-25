playsound minecraft:entity.shulker_bullet.hurt hostile @a[distance=..16] ~ ~ ~ 2 2
playsound minecraft:item.firecharge.use hostile @a[distance=..16] ~ ~ ~ 1 2

particle minecraft:poof ~ ~0.25 ~ 0.3 0 0.3 0.1 15 normal

tp @s ~ ~ ~ facing entity @p eyes

scoreboard players set @s co_y 3
execute unless entity @a[distance=..6] run scoreboard players set @s co_send 12
execute if entity @a[distance=..6] run scoreboard players set @s co_send -12
function motion:motion/push