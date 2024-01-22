data modify storage cartographer_custom_enchantments:custom_trident motion_save set value []
execute on passengers run data modify storage cartographer_custom_enchantments:custom_trident motion_save set from entity @s item.tag.WaterMotion

data modify entity @s Motion[0] set from storage cartographer_custom_enchantments:custom_trident motion_save[0]
data modify entity @s Motion[1] set from storage cartographer_custom_enchantments:custom_trident motion_save[1]
data modify entity @s Motion[2] set from storage cartographer_custom_enchantments:custom_trident motion_save[2]

execute store result score $trident_neg_vel ca.ench_var run data get storage cartographer_custom_enchantments:custom_trident motion_save[1] 100
execute store result storage cartographer_custom_enchantments:custom_trident motion_save[1] double 0.01 run scoreboard players remove $trident_neg_vel ca.ench_var 6

execute on passengers run data modify entity @s item.tag.WaterMotion set from storage cartographer_custom_enchantments:custom_trident motion_save