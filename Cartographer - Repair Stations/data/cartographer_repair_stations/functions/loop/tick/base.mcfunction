execute if entity @e[tag=repair_interact_return,nbt={HurtTime:9s}] run execute as @e[tag=repair_interact_return,nbt={HurtTime:9s}] at @s run execute as @e[tag=repair_display,distance=..5,limit=1,sort=nearest] at @s run function cartographer_repair_stations:repair/return_item

execute if entity @e[tag=repair_interact_confirm,nbt={HurtTime:9s}] run execute as @e[tag=repair_interact_confirm,nbt={HurtTime:9s}] at @s run execute as @e[tag=repair_display,distance=..5,limit=1,sort=nearest] at @s run function cartographer_repair_stations:repair/repair

execute as @e[tag=repair_interact_confirm] at @s run particle minecraft:dust 0 1 0 1 ~ ~0.2 ~ 0.05 0.05 0.05 0 1
execute as @e[tag=repair_interact_return] at @s run particle minecraft:dust 1 0 0 1 ~ ~0.2 ~ 0.05 0.05 0.05 0 1

execute as @e[tag=repair_interact_confirm] at @s run effect give @s invisibility 1 0 true
execute as @e[tag=repair_interact_return] at @s run effect give @s invisibility 1 0 true

execute as @e[tag=repair_display] at @s run tp @s ~ ~ ~ ~1 ~
execute as @e[tag=repair_display] at @s run particle minecraft:composter ~ ~ ~ 0.3 0 0.3 0 1

execute as @e[tag=repair_sign] at @s run execute if block ~ ~ ~1 air run kill @e[type=item,distance=..1,nbt={Item:{id:"minecraft:emerald_block",Count:1b}}]
execute as @e[tag=repair_sign] at @s run execute if block ~ ~ ~1 air run setblock ~ ~ ~1 emerald_block replace


schedule function cartographer_repair_stations:loop/tick/base 1t