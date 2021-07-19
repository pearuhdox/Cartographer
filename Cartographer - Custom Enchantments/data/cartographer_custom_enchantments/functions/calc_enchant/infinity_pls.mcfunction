data modify storage ca.susu:enchants arr set value []
data modify storage ca.susu:enchants arr append from entity @s Inventory[{tag:{CustomEnchantments:[{id:"infinity",lvl:1b}]}}].Slot

execute if data storage ca.susu:enchants arr[0] run function cartographer_custom_enchantments:calc_enchant/infinity_pls_rec