execute if score $slot ca.inf_cdl_var matches 0 run data modify storage cartographer_custom_enchantments:infinity cdl_item set from storage cartographer_custom_enchantments:infinity with_cdl[{Slot:0b}]
execute if score $slot ca.inf_cdl_var matches 1 run data modify storage cartographer_custom_enchantments:infinity cdl_item set from storage cartographer_custom_enchantments:infinity with_cdl[{Slot:1b}]
execute if score $slot ca.inf_cdl_var matches 2 run data modify storage cartographer_custom_enchantments:infinity cdl_item set from storage cartographer_custom_enchantments:infinity with_cdl[{Slot:2b}]
execute if score $slot ca.inf_cdl_var matches 3 run data modify storage cartographer_custom_enchantments:infinity cdl_item set from storage cartographer_custom_enchantments:infinity with_cdl[{Slot:3b}]
execute if score $slot ca.inf_cdl_var matches 4 run data modify storage cartographer_custom_enchantments:infinity cdl_item set from storage cartographer_custom_enchantments:infinity with_cdl[{Slot:4b}]
execute if score $slot ca.inf_cdl_var matches 5 run data modify storage cartographer_custom_enchantments:infinity cdl_item set from storage cartographer_custom_enchantments:infinity with_cdl[{Slot:5b}]
execute if score $slot ca.inf_cdl_var matches 6 run data modify storage cartographer_custom_enchantments:infinity cdl_item set from storage cartographer_custom_enchantments:infinity with_cdl[{Slot:6b}]
execute if score $slot ca.inf_cdl_var matches 7 run data modify storage cartographer_custom_enchantments:infinity cdl_item set from storage cartographer_custom_enchantments:infinity with_cdl[{Slot:7b}]
execute if score $slot ca.inf_cdl_var matches 8 run data modify storage cartographer_custom_enchantments:infinity cdl_item set from storage cartographer_custom_enchantments:infinity with_cdl[{Slot:8b}]

scoreboard players set $charges ca.inf_ch_var 0

function cartographer_custom_enchantments:enchant_effects/infinity/with_cdl/charge_manager

execute unless score $charges ca.inf_ch_var matches 1.. run function cartographer_custom_enchantments:enchant_effects/infinity/with_cdl/out_of_charges