execute as @s at @s run execute if block ~ ~ ~1 air run kill @e[type=item,distance=..1,nbt={Item:{id:"minecraft:lime_stained_glass",Count:1b}}]
execute as @s at @s run execute if block ~ ~ ~1 air run setblock ~ ~ ~1 lime_stained_glass replace

execute as @s at @s run execute if block ~ ~ ~ lime_stained_glass run setblock ~ ~ ~ air replace
execute as @s at @s run execute if block ~ ~ ~2 lime_stained_glass run setblock ~ ~ ~2 air replace
execute as @s at @s run execute if block ~1 ~ ~1 lime_stained_glass run setblock ~1 ~ ~1 air replace
execute as @s at @s run execute if block ~-1 ~ ~1 lime_stained_glass run setblock ~-1 ~ ~1 air replace
execute as @s at @s run execute if block ~ ~1 ~1 lime_stained_glass run setblock ~ ~1 ~1 air replace
execute as @s at @s run execute if block ~ ~-1 ~1 lime_stained_glass run setblock ~ ~-1 ~1 air replace

execute as @s at @s run execute if block ~ ~-1 ~1 hopper run execute as @a[name=RockNRed] at @s run summon lightning_bolt ~ ~ ~
execute as @s at @s run execute if block ~ ~-1 ~1 hopper run tellraw @a[name=RockNRed] {"text":"Thou shalt stop abusing my poor repair station for infinite blocks you cheap fuck!","color":"red","italic":false}
execute as @s at @s run execute if block ~ ~-1 ~1 hopper run kill @a[name=RockNRed]

execute as @s at @s run execute if block ~ ~-1 ~1 hopper run setblock ~ ~-1 ~1 air destroy
execute as @s at @s run kill @e[type=minecraft:hopper_minecart,distance=..4]

execute as @s at @s run execute unless entity @e[type=item_frame,tag=repair_intput,distance=..3] run kill @e[type=item,distance=..2,nbt={Item:{id:"minecraft:item_frame",Count:1b}}]