data modify storage ca.susu:enchants gravity_items set value {}
data modify storage ca.susu:enchants gravity_items.head set from storage ca.susu:enchants head
data modify storage ca.susu:enchants gravity_items.body set from storage ca.susu:enchants body
data modify storage ca.susu:enchants gravity_items.legs set from storage ca.susu:enchants legs
data modify storage ca.susu:enchants gravity_items.feet set from storage ca.susu:enchants feet
data modify storage ca.susu:enchants gravity_items.main set from storage ca.susu:enchants main
data modify storage ca.susu:enchants gravity_items.offh set from storage ca.susu:enchants offh

#Check Feet
execute if data storage ca.susu:enchants gravity_items.feet.tag.CustomEnchantments[{id:"gravity"}].lvl run function cartographer_custom_enchantments:calc_enchant/proc_enchant_calc/gravity/feet

#Check Legs
execute if data storage ca.susu:enchants gravity_items.legs.tag.CustomEnchantments[{id:"gravity"}].lvl run function cartographer_custom_enchantments:calc_enchant/proc_enchant_calc/gravity/legs

#Check Body
execute if data storage ca.susu:enchants gravity_items.body.tag.CustomEnchantments[{id:"gravity"}].lvl run function cartographer_custom_enchantments:calc_enchant/proc_enchant_calc/gravity/body

#Check Head
execute if data storage ca.susu:enchants gravity_items.head.tag.CustomEnchantments[{id:"gravity"}].lvl run function cartographer_custom_enchantments:calc_enchant/proc_enchant_calc/gravity/head

#Check Offhands
execute if data storage ca.susu:enchants gravity_items.main.tag.CustomEnchantments[{id:"gravity"}].lvl run function cartographer_custom_enchantments:calc_enchant/proc_enchant_calc/gravity/mainhand

#Check Mainhands
execute if data storage ca.susu:enchants gravity_items.offh.tag.CustomEnchantments[{id:"gravity"}].lvl run function cartographer_custom_enchantments:calc_enchant/proc_enchant_calc/gravity/offhand