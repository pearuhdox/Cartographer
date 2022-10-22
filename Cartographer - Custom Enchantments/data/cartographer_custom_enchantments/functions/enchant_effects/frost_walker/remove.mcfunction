tag @s remove ca.added_frost_walker

clear @s chainmail_boots{EtherealChainsFrostWalker:1b}

data modify storage cartographer_custom_enchantments:frost_walker Item set value {}
data modify storage cartographer_custom_enchantments:frost_walker Item set from entity @s Inventory[{Slot:100b}]

data remove storage cartographer_custom_enchantments:frost_walker Item.Slot

execute if data storage cartographer_custom_enchantments:frost_walker Item.id run function cartographer_custom_enchantments:enchant_effects/frost_walker/data_remove

stopsound @a[distance=..8] * item.armor.equip_chain