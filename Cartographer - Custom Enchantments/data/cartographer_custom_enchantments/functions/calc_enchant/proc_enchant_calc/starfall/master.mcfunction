data modify storage ca.susu:enchants starfall_items set value {}
data modify storage ca.susu:enchants starfall_items.head set from storage ca.susu:enchants head
data modify storage ca.susu:enchants starfall_items.body set from storage ca.susu:enchants body
data modify storage ca.susu:enchants starfall_items.legs set from storage ca.susu:enchants legs
data modify storage ca.susu:enchants starfall_items.feet set from storage ca.susu:enchants feet
data modify storage ca.susu:enchants starfall_items.main set from storage ca.susu:enchants main
data modify storage ca.susu:enchants starfall_items.offh set from storage ca.susu:enchants offh

#Check Feet
execute if data storage ca.susu:enchants starfall_items.feet.tag.CustomEnchantments[{id:"starfall"}].lvl run function cartographer_custom_enchantments:calc_enchant/proc_enchant_calc/starfall/feet

#Check Legs
execute if data storage ca.susu:enchants starfall_items.legs.tag.CustomEnchantments[{id:"starfall"}].lvl run function cartographer_custom_enchantments:calc_enchant/proc_enchant_calc/starfall/legs

#Check Body
execute if data storage ca.susu:enchants starfall_items.body.tag.CustomEnchantments[{id:"starfall"}].lvl run function cartographer_custom_enchantments:calc_enchant/proc_enchant_calc/starfall/body

#Check Head
execute if data storage ca.susu:enchants starfall_items.head.tag.CustomEnchantments[{id:"starfall"}].lvl run function cartographer_custom_enchantments:calc_enchant/proc_enchant_calc/starfall/head

#Check Offhands
execute if data storage ca.susu:enchants starfall_items.main.tag.CustomEnchantments[{id:"starfall"}].lvl run function cartographer_custom_enchantments:calc_enchant/proc_enchant_calc/starfall/mainhand

#Check Mainhands
execute if data storage ca.susu:enchants starfall_items.offh.tag.CustomEnchantments[{id:"starfall"}].lvl run function cartographer_custom_enchantments:calc_enchant/proc_enchant_calc/starfall/offhand