data modify entity 31192011-4452-2112-0000-000000000000 HandItems[0] set value {}
data modify entity 31192011-4452-2112-0000-000000000000 HandItems[0] set from storage cartographer_custom_enchantments:repeating Inventory[0]
execute as 31192011-4452-2112-0000-000000000000 if predicate cartographer_custom_enchantments:stand_hold_arrow run data modify storage cartographer_custom_enchantments:repeating ArrowList append from storage cartographer_custom_enchantments:repeating Inventory[0]
data remove storage cartographer_custom_enchantments:repeating Inventory[0]

execute if data storage cartographer_custom_enchantments:repeating Inventory[0] run function cartographer_custom_enchantments:enchant_effects/repeating/recurse/get_arrows