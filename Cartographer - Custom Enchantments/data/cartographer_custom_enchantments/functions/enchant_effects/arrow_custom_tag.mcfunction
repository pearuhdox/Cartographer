#Add the proper tag to the mob based on closest arrow.
execute if score $explosive ca.var matches 1.. run function cartographer_custom_enchantments:enchant_effects/arrow_custom_tag/explosive
scoreboard players operation @s ca.vol_dmg = $vol_dmg ca.vol_dmg

execute if score $punch ca.var matches 1.. positioned ~ ~0.5 ~ run tp @s ~ ~ ~ facing entity @e[distance=..7,type=arrow,limit=1,sort=nearest] feet
execute if score $punch ca.var matches 1.. positioned ~ ~0.5 ~ run data modify entity @s Rotation[1] set value 0f

#Run Arrow Effect Dictionary
function #minecraft:cartographer_events/dict/arrow