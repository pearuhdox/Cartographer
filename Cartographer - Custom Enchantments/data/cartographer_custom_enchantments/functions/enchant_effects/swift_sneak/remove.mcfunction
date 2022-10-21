tag @s remove ca.added_swift_sneak

clear @s chainmail_leggings{EtherealChainsSwiftSneak:1b}

data modify storage cartographer_custom_enchantments:swift_sneak Item set value {}
data modify storage cartographer_custom_enchantments:swift_sneak Item set from entity @s Inventory[{Slot:101b}]

data remove storage cartographer_custom_enchantments:swift_sneak Item.Slot

execute if data storage cartographer_custom_enchantments:swift_sneak Item.id run function cartographer_custom_enchantments:enchant_effects/swift_sneak/data_remove

stopsound @a[distance=..8] * item.armor.equip_chain