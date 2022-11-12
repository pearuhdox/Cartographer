playsound minecraft:entity.shulker_bullet.hurt hostile @a[distance=..16] ~ ~ ~ 1 2
playsound minecraft:item.firecharge.use hostile @a[distance=..16] ~ ~ ~ 0.65 2
playsound minecraft:entity.horse.gallop hostile @a[distance=..16] ~ ~ ~ 0.75 1.35

particle minecraft:poof ~ ~0.25 ~ 0.3 0 0.3 0.1 15 normal

tp @s ~ ~ ~ facing entity @p eyes

scoreboard players set @s co_y 3
execute unless entity @a[distance=..10] run scoreboard players set @s co_send 16
execute if entity @a[distance=..10] unless entity @a[distance=..8] run scoreboard players set @s co_send 12
execute if entity @a[distance=..8] unless entity @a[distance=..6] run scoreboard players set @s co_send 10
execute if entity @a[distance=..6] unless entity @a[distance=..4] run scoreboard players set @s co_send 8
execute if entity @a[distance=..4] run scoreboard players set @s co_send 6

function motion:motion/push

tag @s add ca.has_gap_closed