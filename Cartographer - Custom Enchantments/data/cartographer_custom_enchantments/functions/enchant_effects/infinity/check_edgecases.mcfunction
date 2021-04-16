function suso.player_data:get/do

data modify storage i:internal inf_cmp_dst set value []
data modify storage i:internal inf_cmp_dst append from storage cartographer_core:pldata working_data.infinity[{tag:{Infinity:1}}]
data modify storage i:internal inf_cmp_src set value []
data modify storage i:internal inf_cmp_src append from entity @s Inventory[{tag:{Infinity:1}}]
execute store result score $temp i.var run data modify storage i:internal inf_cmp_dst set from storage i:internal inf_cmp_src

execute if score $temp i.var matches 1 run function cartographer_custom_enchantments:enchant_effects/infinity/restore