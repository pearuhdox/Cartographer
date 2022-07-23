#Add the proper tag to the mob based on closest arrow.
execute if score $bleed ca.var matches 1.. run tag @s add is_bleed

execute if score $electrode ca.var matches 1.. run tag @s add is_electrode

execute if score $expose ca.var matches 1.. run tag @s add is_pin

execute if score $frost ca.var matches 1.. run tag @s add is_frost

execute if score $infect ca.var matches 1.. run tag @s add is_infection

execute if score $possess ca.var matches 1.. run tag @s add is_possess

execute if score $flash ca.var matches 1.. run tag @s add is_flash
execute if score $flash ca.var matches 1.. run scoreboard players operation @s ca.flash = $flash ca.var

execute if score $cauterize ca.var matches 1.. run tag @s add is_cauterize

execute if score $explosive ca.var matches 1.. run tag @s add is_explosive
execute if score $explosive ca.var matches 1.. run function cartographer_custom_enchantments:enchant_effects/arrow_custom_tag/explosive

scoreboard players operation @s ca.vol_dmg = $vol_dmg ca.var

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