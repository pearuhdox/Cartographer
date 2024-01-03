data modify storage ca.susu:enchants repulsion_items set value {}
data modify storage ca.susu:enchants repulsion_items.head set from storage ca.susu:enchants head
data modify storage ca.susu:enchants repulsion_items.body set from storage ca.susu:enchants body
data modify storage ca.susu:enchants repulsion_items.legs set from storage ca.susu:enchants legs
data modify storage ca.susu:enchants repulsion_items.feet set from storage ca.susu:enchants feet
data modify storage ca.susu:enchants repulsion_items.main set from storage ca.susu:enchants main
data modify storage ca.susu:enchants repulsion_items.offh set from storage ca.susu:enchants offh


#Check Offhands
execute if data storage ca.susu:enchants repulsion_items.main.tag.CustomEnchantments[{id:"repulsion"}].lvl run function cartographer_custom_enchantments:calc_enchant/proc_enchant_calc/repulsion/mainhand

#Check Mainhands
execute if data storage ca.susu:enchants repulsion_items.offh.tag.CustomEnchantments[{id:"repulsion"}].lvl run function cartographer_custom_enchantments:calc_enchant/proc_enchant_calc/repulsion/offhand