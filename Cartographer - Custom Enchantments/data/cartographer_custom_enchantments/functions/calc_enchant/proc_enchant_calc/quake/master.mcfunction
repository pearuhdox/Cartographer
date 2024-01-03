data modify storage ca.susu:enchants quake_items set value {}
data modify storage ca.susu:enchants quake_items.head set from storage ca.susu:enchants head
data modify storage ca.susu:enchants quake_items.body set from storage ca.susu:enchants body
data modify storage ca.susu:enchants quake_items.legs set from storage ca.susu:enchants legs
data modify storage ca.susu:enchants quake_items.feet set from storage ca.susu:enchants feet
data modify storage ca.susu:enchants quake_items.main set from storage ca.susu:enchants main
data modify storage ca.susu:enchants quake_items.offh set from storage ca.susu:enchants offh

#Check Feet
execute if data storage ca.susu:enchants quake_items.feet.tag.CustomEnchantments[{id:"quake"}].lvl run function cartographer_custom_enchantments:calc_enchant/proc_enchant_calc/quake/feet

#Check Legs
execute if data storage ca.susu:enchants quake_items.legs.tag.CustomEnchantments[{id:"quake"}].lvl run function cartographer_custom_enchantments:calc_enchant/proc_enchant_calc/quake/legs

#Check Body
execute if data storage ca.susu:enchants quake_items.body.tag.CustomEnchantments[{id:"quake"}].lvl run function cartographer_custom_enchantments:calc_enchant/proc_enchant_calc/quake/body

#Check Head
execute if data storage ca.susu:enchants quake_items.head.tag.CustomEnchantments[{id:"quake"}].lvl run function cartographer_custom_enchantments:calc_enchant/proc_enchant_calc/quake/head

#Check Offhands
execute if data storage ca.susu:enchants quake_items.main.tag.CustomEnchantments[{id:"quake"}].lvl run function cartographer_custom_enchantments:calc_enchant/proc_enchant_calc/quake/mainhand

#Check Mainhands
execute if data storage ca.susu:enchants quake_items.offh.tag.CustomEnchantments[{id:"quake"}].lvl run function cartographer_custom_enchantments:calc_enchant/proc_enchant_calc/quake/offhand