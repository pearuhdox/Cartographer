function cartographer_custom_enchantments:inspector/tooltip/enchantments/fetch with storage cartographer_custom_enchantments:inspector itr.tag.CustomEnchantments[0]

data remove storage cartographer_custom_enchantments:inspector itr.tag.CustomEnchantments[0]

execute if data storage cartographer_custom_enchantments:inspector itr.tag.CustomEnchantments[0] run data modify storage cartographer_custom_enchantments:inspector lore append value '{"text":" "}'

execute if data storage cartographer_custom_enchantments:inspector itr.tag.CustomEnchantments[0] run function cartographer_custom_enchantments:inspector/tooltip/enchantments/recurse