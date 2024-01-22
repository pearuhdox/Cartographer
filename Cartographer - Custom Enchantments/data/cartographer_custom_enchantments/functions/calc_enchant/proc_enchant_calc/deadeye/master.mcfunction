data modify storage ca.susu:enchants deadeye_items set value {}
data modify storage ca.susu:enchants deadeye_items.head set from storage ca.susu:enchants head
data modify storage ca.susu:enchants deadeye_items.body set from storage ca.susu:enchants body
data modify storage ca.susu:enchants deadeye_items.legs set from storage ca.susu:enchants legs
data modify storage ca.susu:enchants deadeye_items.feet set from storage ca.susu:enchants feet
data modify storage ca.susu:enchants deadeye_items.main set from storage ca.susu:enchants main
data modify storage ca.susu:enchants deadeye_items.offh set from storage ca.susu:enchants offh

#Check Feet
execute if data storage ca.susu:enchants deadeye_items.feet.tag.CustomEnchantments[{id:"deadeye"}].lvl run function cartographer_custom_enchantments:calc_enchant/proc_enchant_calc/deadeye/feet

#Check Legs
execute if data storage ca.susu:enchants deadeye_items.legs.tag.CustomEnchantments[{id:"deadeye"}].lvl run function cartographer_custom_enchantments:calc_enchant/proc_enchant_calc/deadeye/legs

#Check Body
execute if data storage ca.susu:enchants deadeye_items.body.tag.CustomEnchantments[{id:"deadeye"}].lvl run function cartographer_custom_enchantments:calc_enchant/proc_enchant_calc/deadeye/body

#Check Head
execute if data storage ca.susu:enchants deadeye_items.head.tag.CustomEnchantments[{id:"deadeye"}].lvl run function cartographer_custom_enchantments:calc_enchant/proc_enchant_calc/deadeye/head

#Check Offhands
execute if data storage ca.susu:enchants deadeye_items.main.tag.CustomEnchantments[{id:"deadeye"}].lvl run function cartographer_custom_enchantments:calc_enchant/proc_enchant_calc/deadeye/mainhand

#Check Mainhands
execute if data storage ca.susu:enchants deadeye_items.offh.tag.CustomEnchantments[{id:"deadeye"}].lvl run function cartographer_custom_enchantments:calc_enchant/proc_enchant_calc/deadeye/offhand