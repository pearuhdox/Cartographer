data modify storage ca.susu:enchants arr set value []
data modify storage ca.susu:enchants arr append from entity @s Inventory[{tag:{CustomEnchantments:[{id:"reconstruction"}]}}]

data modify storage ca.susu:enchants test_copy set value []
data modify storage ca.susu:enchants test_copy set from storage ca.susu:enchants arr


execute if data storage ca.susu:enchants arr[0] run function cartographer_custom_enchantments:calc_enchant/reconstruction/rec