execute if entity @s[tag=repair_interact_return,nbt={HurtTime:9s}] as @e[tag=repair_display,distance=..5,limit=1,sort=nearest] at @s run function cartographer_repair_stations:repair/return_item
execute if entity @s[tag=repair_interact_confirm,nbt={HurtTime:9s}] as @e[tag=repair_display,distance=..5,limit=1,sort=nearest] at @s run function cartographer_repair_stations:repair/repair

execute if entity @s[tag=repair_interact_confirm] if entity @a[distance=..5] run particle minecraft:dust 0 1 0 1 ~ ~0.2 ~ 0.05 0.05 0.05 0 1
execute if entity @s[tag=repair_interact_return] if entity @a[distance=..5] run particle minecraft:dust 1 0 0 1 ~ ~0.2 ~ 0.05 0.05 0.05 0 1

effect give @s[tag=repair_interact_confirm] invisibility 1 0 true
effect give @s[tag=repair_interact_return] invisibility 1 0 true