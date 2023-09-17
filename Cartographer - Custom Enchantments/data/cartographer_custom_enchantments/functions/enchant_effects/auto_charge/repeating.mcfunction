data modify storage cartographer_custom_enchantments:auto_charge Item.tag.Quiver append value {id:"minecraft:arrow",Count:1b}

execute store result storage cartographer_custom_enchantments:auto_charge Item.tag.Ammo int 1 run scoreboard players add $auto_ammo ca.ench_var 1

data modify storage cartographer_custom_enchantments:auto_charge Item.tag.ChargedProjectiles set value []

data modify storage cartographer_custom_enchantments:auto_charge Item.tag.ChargedProjectiles append from storage cartographer_custom_enchantments:auto_charge Item.tag.Quiver[0]

execute if score $auto_multishot ca.ench_var matches 1.. run data modify storage cartographer_custom_enchantments:auto_charge Item.tag.ChargedProjectiles append from storage cartographer_custom_enchantments:auto_charge Item.tag.Quiver[0]
execute if score $auto_multishot ca.ench_var matches 1.. run data modify storage cartographer_custom_enchantments:auto_charge Item.tag.ChargedProjectiles append from storage cartographer_custom_enchantments:auto_charge Item.tag.Quiver[0]

execute unless data storage cartographer_custom_enchantments:auto_charge Item.tag.Charged run data remove storage cartographer_custom_enchantments:auto_charge Item.tag.Quiver[0]

data modify storage cartographer_custom_enchantments:auto_charge Item.tag.Charged set value 1b
