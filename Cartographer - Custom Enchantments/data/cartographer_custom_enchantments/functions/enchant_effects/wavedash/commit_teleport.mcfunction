execute at @s run particle minecraft:splash ~ ~0.2 ~ 0.4 0.1 0.4 0.1 40 normal
execute at @s run particle minecraft:cloud ~ ~0.2 ~ 0.25 0.1 0.25 0.1 15 normal

particle minecraft:splash ~ ~-0.4 ~ 0.4 0.1 0.4 0.1 40 normal
particle minecraft:cloud ~ ~-0.4 ~ 0.25 0.1 0.25 0.1 15 normal

effect give @s resistance 1 4 true
effect give @s slow_falling 1 0 true

execute if score $kill_flag ca.wavedash matches 0 run tp @s ~ ~ ~ ~ ~30
execute if score $kill_flag ca.wavedash matches 1 run tp @s ~ ~ ~

scoreboard players set @s ca.wavedash_time 0

execute if score @s ca.loyalty_time matches 1.. run function cartographer_custom_enchantments:enchant_effects/loyalty/time_refund

playsound minecraft:item.trident.thunder player @a[distance=..12] ~ ~ ~ 0.5 2
playsound minecraft:item.trident.riptide_3 player @a[distance=..12] ~ ~ ~ 1 2
playsound minecraft:block.bubble_column.whirlpool_inside player @a[distance=..12] ~ ~ ~ 1 1.5
playsound minecraft:entity.enderman.teleport player @a[distance=..12] ~ ~ ~ 1 1.2