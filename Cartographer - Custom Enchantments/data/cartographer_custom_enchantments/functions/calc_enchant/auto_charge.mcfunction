data modify storage ca.susu:enchants temp_item set value {}
data modify storage ca.susu:enchants temp_item_auto set value []

data modify storage ca.susu:enchants temp_item_auto append from entity @s Inventory[{tag:{Charged:1b,Ammo:1,CustomEnchantments:[{id:"auto_charge"},{id:"repeating",lvl:1b}]}}]

data modify storage ca.susu:enchants temp_item_auto append from entity @s Inventory[{tag:{Charged:1b,Ammo:1,CustomEnchantments:[{id:"auto_charge"},{id:"repeating",lvl:2b}]}}]
data modify storage ca.susu:enchants temp_item_auto append from entity @s Inventory[{tag:{Charged:1b,Ammo:2,CustomEnchantments:[{id:"auto_charge"},{id:"repeating",lvl:2b}]}}]

data modify storage ca.susu:enchants temp_item_auto append from entity @s Inventory[{tag:{Charged:1b,Ammo:1,CustomEnchantments:[{id:"auto_charge"},{id:"repeating",lvl:3b}]}}]
data modify storage ca.susu:enchants temp_item_auto append from entity @s Inventory[{tag:{Charged:1b,Ammo:2,CustomEnchantments:[{id:"auto_charge"},{id:"repeating",lvl:3b}]}}]
data modify storage ca.susu:enchants temp_item_auto append from entity @s Inventory[{tag:{Charged:1b,Ammo:3,CustomEnchantments:[{id:"auto_charge"},{id:"repeating",lvl:3b}]}}]

data modify storage ca.susu:enchants temp_item_auto append from entity @s Inventory[{tag:{Charged:1b,Ammo:1,CustomEnchantments:[{id:"auto_charge"},{id:"repeating",lvl:4b}]}}]
data modify storage ca.susu:enchants temp_item_auto append from entity @s Inventory[{tag:{Charged:1b,Ammo:2,CustomEnchantments:[{id:"auto_charge"},{id:"repeating",lvl:4b}]}}]
data modify storage ca.susu:enchants temp_item_auto append from entity @s Inventory[{tag:{Charged:1b,Ammo:3,CustomEnchantments:[{id:"auto_charge"},{id:"repeating",lvl:4b}]}}]
data modify storage ca.susu:enchants temp_item_auto append from entity @s Inventory[{tag:{Charged:1b,Ammo:4,CustomEnchantments:[{id:"auto_charge"},{id:"repeating",lvl:4b}]}}]

data modify storage ca.susu:enchants temp_item_auto append from entity @s Inventory[{tag:{Charged:1b,Ammo:1,CustomEnchantments:[{id:"auto_charge"},{id:"repeating",lvl:5b}]}}]
data modify storage ca.susu:enchants temp_item_auto append from entity @s Inventory[{tag:{Charged:1b,Ammo:2,CustomEnchantments:[{id:"auto_charge"},{id:"repeating",lvl:5b}]}}]
data modify storage ca.susu:enchants temp_item_auto append from entity @s Inventory[{tag:{Charged:1b,Ammo:3,CustomEnchantments:[{id:"auto_charge"},{id:"repeating",lvl:5b}]}}]
data modify storage ca.susu:enchants temp_item_auto append from entity @s Inventory[{tag:{Charged:1b,Ammo:4,CustomEnchantments:[{id:"auto_charge"},{id:"repeating",lvl:5b}]}}]
data modify storage ca.susu:enchants temp_item_auto append from entity @s Inventory[{tag:{Charged:1b,Ammo:5,CustomEnchantments:[{id:"auto_charge"},{id:"repeating",lvl:5b}]}}]

data modify storage ca.susu:enchants temp_item_auto append from entity @s Inventory[{tag:{Charged:1b,Ammo:1,CustomEnchantments:[{id:"auto_charge"},{id:"repeating",lvl:6b}]}}]
data modify storage ca.susu:enchants temp_item_auto append from entity @s Inventory[{tag:{Charged:1b,Ammo:2,CustomEnchantments:[{id:"auto_charge"},{id:"repeating",lvl:6b}]}}]
data modify storage ca.susu:enchants temp_item_auto append from entity @s Inventory[{tag:{Charged:1b,Ammo:3,CustomEnchantments:[{id:"auto_charge"},{id:"repeating",lvl:6b}]}}]
data modify storage ca.susu:enchants temp_item_auto append from entity @s Inventory[{tag:{Charged:1b,Ammo:4,CustomEnchantments:[{id:"auto_charge"},{id:"repeating",lvl:6b}]}}]
data modify storage ca.susu:enchants temp_item_auto append from entity @s Inventory[{tag:{Charged:1b,Ammo:5,CustomEnchantments:[{id:"auto_charge"},{id:"repeating",lvl:6b}]}}]
data modify storage ca.susu:enchants temp_item_auto append from entity @s Inventory[{tag:{Charged:1b,Ammo:6,CustomEnchantments:[{id:"auto_charge"},{id:"repeating",lvl:6b}]}}]

data modify storage ca.susu:enchants temp_item_auto append from entity @s Inventory[{tag:{Charged:1b,Ammo:1,CustomEnchantments:[{id:"auto_charge"},{id:"repeating",lvl:7b}]}}]
data modify storage ca.susu:enchants temp_item_auto append from entity @s Inventory[{tag:{Charged:1b,Ammo:2,CustomEnchantments:[{id:"auto_charge"},{id:"repeating",lvl:7b}]}}]
data modify storage ca.susu:enchants temp_item_auto append from entity @s Inventory[{tag:{Charged:1b,Ammo:3,CustomEnchantments:[{id:"auto_charge"},{id:"repeating",lvl:7b}]}}]
data modify storage ca.susu:enchants temp_item_auto append from entity @s Inventory[{tag:{Charged:1b,Ammo:4,CustomEnchantments:[{id:"auto_charge"},{id:"repeating",lvl:7b}]}}]
data modify storage ca.susu:enchants temp_item_auto append from entity @s Inventory[{tag:{Charged:1b,Ammo:5,CustomEnchantments:[{id:"auto_charge"},{id:"repeating",lvl:7b}]}}]
data modify storage ca.susu:enchants temp_item_auto append from entity @s Inventory[{tag:{Charged:1b,Ammo:6,CustomEnchantments:[{id:"auto_charge"},{id:"repeating",lvl:7b}]}}]
data modify storage ca.susu:enchants temp_item_auto append from entity @s Inventory[{tag:{Charged:1b,Ammo:7,CustomEnchantments:[{id:"auto_charge"},{id:"repeating",lvl:7b}]}}]

data modify storage ca.susu:enchants temp_item_auto append from entity @s Inventory[{tag:{Charged:0b,CustomEnchantments:[{id:"auto_charge"}]}}]

data modify storage ca.susu:enchants temp_item set from storage ca.susu:enchants temp_item_auto[0]

execute store result score @s ca.auto_charge run data get storage ca.susu:enchants temp_item.Slot
execute if data storage ca.susu:enchants temp_item.Slot run scoreboard players add @s ca.auto_charge 1
execute if score @s ca.auto_charge matches 10.. run scoreboard players set @s ca.auto_charge 0
execute if score @s ca.auto_charge matches ..-1 run scoreboard players set @s ca.auto_charge 10

execute if score @s ca.auto_charge matches 1.. run scoreboard players set $cu_en_kill ca.enabler 1