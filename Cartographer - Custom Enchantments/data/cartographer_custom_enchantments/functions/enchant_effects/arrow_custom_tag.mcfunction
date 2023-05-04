#Add the proper tag to the mob based on closest arrow.
execute if score $cauterize ca.var matches 1.. run tag @s add is_cauterize

execute if score $explosive ca.var matches 1.. run tag @s add is_explosive
execute if score $explosive ca.var matches 1.. run function cartographer_custom_enchantments:enchant_effects/arrow_custom_tag/explosive

scoreboard players operation @s ca.vol_dmg = $vol_dmg ca.vol_dmg

execute if score $tempo_theft ca.var matches 1 run tag @s add is_tempo_1
execute if score $tempo_theft ca.var matches 2 run tag @s add is_tempo_1
execute if score $tempo_theft ca.var matches 3 run tag @s add is_tempo_1

execute if score $punch ca.var matches 1 run tag @s add is_punch_1
execute if score $punch ca.var matches 2 run tag @s add is_punch_2
execute if score $punch ca.var matches 3 run tag @s add is_punch_3
execute if score $punch ca.var matches 4 run tag @s add is_punch_4
execute if score $punch ca.var matches 5 run tag @s add is_punch_5

execute if entity @s[tag=is_punch_1] positioned ~ ~0.5 ~ run tp @s ~ ~ ~ facing entity @e[distance=..7,type=arrow,limit=1,sort=nearest] feet
execute if entity @s[tag=is_punch_2] positioned ~ ~0.5 ~ run tp @s ~ ~ ~ facing entity @e[distance=..7,type=arrow,limit=1,sort=nearest] feet
execute if entity @s[tag=is_punch_3] positioned ~ ~0.5 ~ run tp @s ~ ~ ~ facing entity @e[distance=..7,type=arrow,limit=1,sort=nearest] feet
execute if entity @s[tag=is_punch_4] positioned ~ ~0.5 ~ run tp @s ~ ~ ~ facing entity @e[distance=..7,type=arrow,limit=1,sort=nearest] feet
execute if entity @s[tag=is_punch_5] positioned ~ ~0.5 ~ run tp @s ~ ~ ~ facing entity @e[distance=..7,type=arrow,limit=1,sort=nearest] feet

execute if entity @s[tag=is_punch_1] positioned ~ ~0.5 ~ run data modify entity @s Rotation[1] set value 0f
execute if entity @s[tag=is_punch_2] positioned ~ ~0.5 ~ run data modify entity @s Rotation[1] set value 0f
execute if entity @s[tag=is_punch_3] positioned ~ ~0.5 ~ run data modify entity @s Rotation[1] set value 0f
execute if entity @s[tag=is_punch_4] positioned ~ ~0.5 ~ run data modify entity @s Rotation[1] set value 0f
execute if entity @s[tag=is_punch_5] positioned ~ ~0.5 ~ run data modify entity @s Rotation[1] set value 0f

#Run Arrow Effect Dictionary
function #minecraft:cartographer_events/dict/arrow