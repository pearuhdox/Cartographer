tag @s remove ca.added_soul_speed


clear @s chainmail_boots{EtherealChainsSoulSpeed:1b}

data modify storage cartographer_custom_enchantments:soul_speed Item set value {}
data modify storage cartographer_custom_enchantments:soul_speed Item set from entity @s Inventory[{Slot:100b}]

data remove storage cartographer_custom_enchantments:soul_speed Item.Slot

execute if data storage cartographer_custom_enchantments:soul_speed Item.id run function cartographer_custom_enchantments:enchant_effects/soul_speed/data_remove

stopsound @a[distance=..12] * minecraft:item.armor.equip_leather
stopsound @a[distance=..12] * minecraft:item.armor.equip_golden
stopsound @a[distance=..12] * minecraft:item.armor.equip_chain
stopsound @a[distance=..12] * minecraft:item.armor.equip_iron
stopsound @a[distance=..12] * minecraft:item.armor.equip_diamond
stopsound @a[distance=..12] * minecraft:item.armor.equip_netherite