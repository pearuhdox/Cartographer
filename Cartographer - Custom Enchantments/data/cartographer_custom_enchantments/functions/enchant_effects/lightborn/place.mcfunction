#data modify storage bbl:vanilla_clear sudo_root.item_id set value "minecraft:torch"
#scoreboard players set $clear_count bbl.storage 0
#function bb:lib/vanilla_item_clear/main
#scoreboard players operation $lightborn_torches ca.ench_var = $return_count bbl.storage

#data modify storage bbl:vanilla_clear sudo_root.item_id set value "minecraft:soul_torch"
#scoreboard players set $clear_count bbl.storage 0
#function bb:lib/vanilla_item_clear/main
#scoreboard players operation $lightborn_soul_torches ca.ench_var = $return_count bbl.storage



execute store result score $lightborn_torches ca.ench_var run clear @s torch 0
execute store result score $lightborn_soul_torches ca.ench_var run clear @s soul_torch 0

execute if score $lightborn_torches ca.ench_var matches 1.. run function cartographer_custom_enchantments:enchant_effects/lightborn/torch_place
execute if score $lightborn_soul_torches ca.ench_var matches 1.. unless score $lightborn_torches ca.ench_var matches 1.. run function cartographer_custom_enchantments:enchant_effects/lightborn/soul_torch_place

scoreboard players set @s ca.raycast -100