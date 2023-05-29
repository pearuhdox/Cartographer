execute if entity @s[tag=ca.unb_feet] if predicate cartographer_custom_enchantments:unbreaking/boots run function cartographer_custom_enchantments:enchant_effects/unbreaking/setup/boots
execute if entity @s[tag=ca.unb_legs] if predicate cartographer_custom_enchantments:unbreaking/leggings run function cartographer_custom_enchantments:enchant_effects/unbreaking/setup/leggings
execute if entity @s[tag=ca.unb_body] if predicate cartographer_custom_enchantments:unbreaking/chestplate run function cartographer_custom_enchantments:enchant_effects/unbreaking/setup/chestplate
execute if entity @s[tag=ca.unb_head] if predicate cartographer_custom_enchantments:unbreaking/helmet run function cartographer_custom_enchantments:enchant_effects/unbreaking/setup/helmet

tag @s remove ca.run_armor_unbreaking