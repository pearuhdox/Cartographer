data modify storage cartographer_custom_enchantments:explosive Fireworks set value {}
data modify storage cartographer_custom_enchantments:explosive Owner set value {}

execute if data entity @s Inventory[{Slot:-106b}].tag.CustomEnchantments[{id:"explosive"}] run data modify storage cartographer_custom_enchantments:explosive Fireworks set from entity @s Inventory[{Slot:-106b}].tag.Fireworks
execute if data entity @s SelectedItem.tag.CustomEnchantments[{id:"explosive"}] run data modify storage cartographer_custom_enchantments:explosive Fireworks set from entity @s SelectedItem.tag.Fireworks

data modify storage cartographer_custom_enchantments:explosive Owner set from entity @s UUID