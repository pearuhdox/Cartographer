data modify storage ca.susu:enchants momentum_items set value {}
data modify storage ca.susu:enchants momentum_items.head set from storage ca.susu:enchants head
data modify storage ca.susu:enchants momentum_items.body set from storage ca.susu:enchants body
data modify storage ca.susu:enchants momentum_items.legs set from storage ca.susu:enchants legs
data modify storage ca.susu:enchants momentum_items.feet set from storage ca.susu:enchants feet
data modify storage ca.susu:enchants momentum_items.main set from storage ca.susu:enchants main
data modify storage ca.susu:enchants momentum_items.offh set from storage ca.susu:enchants offh

#Check Feet
execute if data storage ca.susu:enchants momentum_items.feet.tag.CustomEnchantments[{id:"momentum"}].lvl run function cartographer_custom_enchantments:calc_enchant/proc_enchant_calc/momentum/feet

#Check Legs
execute if data storage ca.susu:enchants momentum_items.legs.tag.CustomEnchantments[{id:"momentum"}].lvl run function cartographer_custom_enchantments:calc_enchant/proc_enchant_calc/momentum/legs

#Check Body
execute if data storage ca.susu:enchants momentum_items.body.tag.CustomEnchantments[{id:"momentum"}].lvl run function cartographer_custom_enchantments:calc_enchant/proc_enchant_calc/momentum/body

#Check Head
execute if data storage ca.susu:enchants momentum_items.head.tag.CustomEnchantments[{id:"momentum"}].lvl run function cartographer_custom_enchantments:calc_enchant/proc_enchant_calc/momentum/head

#Check Offhands
execute if data storage ca.susu:enchants momentum_items.main.tag.CustomEnchantments[{id:"momentum"}].lvl run function cartographer_custom_enchantments:calc_enchant/proc_enchant_calc/momentum/mainhand

#Check Mainhands
execute if data storage ca.susu:enchants momentum_items.offh.tag.CustomEnchantments[{id:"momentum"}].lvl run function cartographer_custom_enchantments:calc_enchant/proc_enchant_calc/momentum/offhand