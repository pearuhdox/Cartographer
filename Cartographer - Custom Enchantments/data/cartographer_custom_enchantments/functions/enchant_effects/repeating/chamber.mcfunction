data modify storage cartographer_custom_enchantments:repeating Item.tag.ChargedProjectiles set value []
data modify storage cartographer_custom_enchantments:repeating Item.tag.Charged set value 1b

data modify storage cartographer_custom_enchantments:repeating Item.tag.ChargedProjectiles append from storage cartographer_custom_enchantments:repeating Item.tag.Quiver[0] 

execute if score @s ca.multishot matches 1.. run data modify storage cartographer_custom_enchantments:repeating Item.tag.ChargedProjectiles append from storage cartographer_custom_enchantments:repeating Item.tag.Quiver[0] 
execute if score @s ca.multishot matches 1.. run data modify storage cartographer_custom_enchantments:repeating Item.tag.ChargedProjectiles append from storage cartographer_custom_enchantments:repeating Item.tag.Quiver[0] 

data remove storage cartographer_custom_enchantments:repeating Item.tag.Quiver[0]