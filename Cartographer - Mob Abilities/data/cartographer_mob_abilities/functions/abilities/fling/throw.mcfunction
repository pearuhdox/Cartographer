playsound minecraft:item.trident.throw player @a ~ ~ ~ 2 0.5

ride @s dismount

tp @s ~ ~ ~ facing entity @p feet

scoreboard players set @s co_send 8
execute unless entity @a[distance=..8] run scoreboard players set @s co_send 17
execute unless entity @a[distance=..12] run scoreboard players set @s co_send 24
execute unless entity @a[distance=..16] run scoreboard players set @s co_send 32

scoreboard players set @s co_y 4
execute unless entity @a[distance=..8] run scoreboard players set @s co_y 5
execute unless entity @a[distance=..12] run scoreboard players set @s co_y 6
execute unless entity @a[distance=..16] run scoreboard players set @s co_y 8

function motion:motion/push