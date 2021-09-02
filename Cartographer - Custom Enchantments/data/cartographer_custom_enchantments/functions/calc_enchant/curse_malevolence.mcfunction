data modify storage ca.susu:enchants arr set value []
data modify storage ca.susu:enchants arr append from entity @s Inventory[{tag:{CustomEnchantments:[{id:"curse_malevolence"}]}}]

execute if data storage ca.susu:enchants arr[0] run function cartographer_custom_enchantments:calc_enchant/curse_malevolence_rec