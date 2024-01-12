data modify storage cartographer_custom_enchantments:custom_trident motion_save set value []
data modify storage cartographer_custom_enchantments:custom_trident motion_save set from entity @s Motion

execute on passengers run data modify entity @s item.tag.WaterMotion set from storage cartographer_custom_enchantments:custom_trident motion_save