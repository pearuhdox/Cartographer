playsound minecraft:entity.shulker_bullet.hurt hostile @a[distance=..16] ~ ~ ~ 2 2
playsound minecraft:item.firecharge.use hostile @a[distance=..16] ~ ~ ~ 1 2

particle minecraft:poof ~ ~0.25 ~ 0.3 0 0.3 0.1 15 normal

tp @s ~ ~ ~ facing entity @p eyes

execute unless entity @a[distance=..6] run function cartographer_core:helper/push_predator
execute if entity @a[distance=..6] run function cartographer_core:helper/push_2