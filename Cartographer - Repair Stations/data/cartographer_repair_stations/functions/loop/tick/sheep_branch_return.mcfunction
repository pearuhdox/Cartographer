#execute if entity @s[tag=repair_interact_return,nbt={HurtTime:5s}] as 31182015-1851-6191-0000-914162120 at @s run function cartographer_repair_stations:repair/return_item

execute if entity @s[tag=repair_interact_return] if entity @a[distance=..5] run particle minecraft:dust 1 0 0 1 ~ ~0.2 ~ 0.05 0.05 0.05 0 1 force

effect give @s[tag=repair_interact_return] invisibility 1 0 true