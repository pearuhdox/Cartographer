data modify storage ca.susu:enchants thorns_items set value {}
data modify storage ca.susu:enchants thorns_items.head set from storage ca.susu:enchants head
data modify storage ca.susu:enchants thorns_items.body set from storage ca.susu:enchants body
data modify storage ca.susu:enchants thorns_items.legs set from storage ca.susu:enchants legs
data modify storage ca.susu:enchants thorns_items.feet set from storage ca.susu:enchants feet
data modify storage ca.susu:enchants thorns_items.main set from storage ca.susu:enchants main
data modify storage ca.susu:enchants thorns_items.offh set from storage ca.susu:enchants offh

#Check Feet
execute if data storage ca.susu:enchants thorns_items.feet.tag.CustomEnchantments[{id:"thorns"}].lvl run function cartographer_custom_enchantments:calc_enchant/proc_enchant_calc/thorns/feet

#Check Legs
execute if data storage ca.susu:enchants thorns_items.legs.tag.CustomEnchantments[{id:"thorns"}].lvl run function cartographer_custom_enchantments:calc_enchant/proc_enchant_calc/thorns/legs

#Check Body
execute if data storage ca.susu:enchants thorns_items.body.tag.CustomEnchantments[{id:"thorns"}].lvl run function cartographer_custom_enchantments:calc_enchant/proc_enchant_calc/thorns/body

#Check Head
execute if data storage ca.susu:enchants thorns_items.head.tag.CustomEnchantments[{id:"thorns"}].lvl run function cartographer_custom_enchantments:calc_enchant/proc_enchant_calc/thorns/head

#Check Offhands
execute if data storage ca.susu:enchants thorns_items.main.tag.CustomEnchantments[{id:"thorns"}].lvl run function cartographer_custom_enchantments:calc_enchant/proc_enchant_calc/thorns/mainhand

#Check Mainhands
execute if data storage ca.susu:enchants thorns_items.offh.tag.CustomEnchantments[{id:"thorns"}].lvl run function cartographer_custom_enchantments:calc_enchant/proc_enchant_calc/thorns/offhand