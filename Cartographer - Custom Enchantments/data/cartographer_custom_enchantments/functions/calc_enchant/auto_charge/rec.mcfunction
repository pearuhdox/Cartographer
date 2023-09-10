scoreboard players set $found_auto_charge ca.ench_var 1

execute store result score $auto_charge_repeating ca.ench_var run data get storage ca.susu:enchants temp_item_auto[0].tag.CustomEnchantments[{id:"repeating"}].lvl
execute if score $auto_charge_repeating ca.ench_var matches 1.. store result score $auto_charge_ammo ca.ench_var run data get storage ca.susu:enchants temp_item_auto[0].tag.Ammo

execute store result score $auto_charge_charged ca.ench_var run data get storage ca.susu:enchants temp_item_auto[0].tag.Charged


execute unless score $auto_charge_repeating ca.ench_var matches 1.. if score $auto_charge_charged ca.ench_var matches 1.. run scoreboard players set $found_auto_charge ca.ench_var 0
execute if score $auto_charge_repeating ca.ench_var matches 1.. if score $auto_charge_ammo ca.ench_var > $auto_charge_repeating ca.ench_var run scoreboard players set $found_auto_charge ca.ench_var 0

execute unless score $found_auto_charge ca.ench_var matches 1.. run data remove storage ca.susu:enchants temp_item_auto[0]
execute unless score $found_auto_charge ca.ench_var matches 1.. if data storage ca.susu:enchants temp_item_auto[0] run function cartographer_custom_enchantments:calc_enchant/auto_charge/rec