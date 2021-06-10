data modify storage ca.susu:enchants temp_item set value {}
data modify storage ca.susu:enchants temp_item_auto set value []

data modify storage ca.susu:enchants temp_item_auto append from entity @s Inventory[{tag:{Charged:1b,Ammo:1,Repeating:1,AutoCharge:1}}]

data modify storage ca.susu:enchants temp_item_auto append from entity @s Inventory[{tag:{Charged:1b,Ammo:1,Repeating:2,AutoCharge:1}}]
data modify storage ca.susu:enchants temp_item_auto append from entity @s Inventory[{tag:{Charged:1b,Ammo:2,Repeating:2,AutoCharge:1}}]

data modify storage ca.susu:enchants temp_item_auto append from entity @s Inventory[{tag:{Charged:1b,Ammo:1,Repeating:3,AutoCharge:1}}]
data modify storage ca.susu:enchants temp_item_auto append from entity @s Inventory[{tag:{Charged:1b,Ammo:2,Repeating:3,AutoCharge:1}}]
data modify storage ca.susu:enchants temp_item_auto append from entity @s Inventory[{tag:{Charged:1b,Ammo:3,Repeating:3,AutoCharge:1}}]

data modify storage ca.susu:enchants temp_item_auto append from entity @s Inventory[{tag:{Charged:1b,Ammo:1,Repeating:4,AutoCharge:1}}]
data modify storage ca.susu:enchants temp_item_auto append from entity @s Inventory[{tag:{Charged:1b,Ammo:2,Repeating:4,AutoCharge:1}}]
data modify storage ca.susu:enchants temp_item_auto append from entity @s Inventory[{tag:{Charged:1b,Ammo:3,Repeating:4,AutoCharge:1}}]
data modify storage ca.susu:enchants temp_item_auto append from entity @s Inventory[{tag:{Charged:1b,Ammo:4,Repeating:4,AutoCharge:1}}]

data modify storage ca.susu:enchants temp_item_auto append from entity @s Inventory[{tag:{Charged:1b,Ammo:1,Repeating:5,AutoCharge:1}}]
data modify storage ca.susu:enchants temp_item_auto append from entity @s Inventory[{tag:{Charged:1b,Ammo:2,Repeating:5,AutoCharge:1}}]
data modify storage ca.susu:enchants temp_item_auto append from entity @s Inventory[{tag:{Charged:1b,Ammo:3,Repeating:5,AutoCharge:1}}]
data modify storage ca.susu:enchants temp_item_auto append from entity @s Inventory[{tag:{Charged:1b,Ammo:4,Repeating:5,AutoCharge:1}}]
data modify storage ca.susu:enchants temp_item_auto append from entity @s Inventory[{tag:{Charged:1b,Ammo:5,Repeating:5,AutoCharge:1}}]

data modify storage ca.susu:enchants temp_item_auto append from entity @s Inventory[{tag:{Charged:1b,Ammo:1,Repeating:6,AutoCharge:1}}]
data modify storage ca.susu:enchants temp_item_auto append from entity @s Inventory[{tag:{Charged:1b,Ammo:2,Repeating:6,AutoCharge:1}}]
data modify storage ca.susu:enchants temp_item_auto append from entity @s Inventory[{tag:{Charged:1b,Ammo:3,Repeating:6,AutoCharge:1}}]
data modify storage ca.susu:enchants temp_item_auto append from entity @s Inventory[{tag:{Charged:1b,Ammo:4,Repeating:6,AutoCharge:1}}]
data modify storage ca.susu:enchants temp_item_auto append from entity @s Inventory[{tag:{Charged:1b,Ammo:5,Repeating:6,AutoCharge:1}}]
data modify storage ca.susu:enchants temp_item_auto append from entity @s Inventory[{tag:{Charged:1b,Ammo:6,Repeating:6,AutoCharge:1}}]


data modify storage ca.susu:enchants temp_item_auto append from entity @s Inventory[{tag:{Charged:1b,Ammo:1,Repeating:7,AutoCharge:1}}]
data modify storage ca.susu:enchants temp_item_auto append from entity @s Inventory[{tag:{Charged:1b,Ammo:2,Repeating:7,AutoCharge:1}}]
data modify storage ca.susu:enchants temp_item_auto append from entity @s Inventory[{tag:{Charged:1b,Ammo:3,Repeating:7,AutoCharge:1}}]
data modify storage ca.susu:enchants temp_item_auto append from entity @s Inventory[{tag:{Charged:1b,Ammo:4,Repeating:7,AutoCharge:1}}]
data modify storage ca.susu:enchants temp_item_auto append from entity @s Inventory[{tag:{Charged:1b,Ammo:5,Repeating:7,AutoCharge:1}}]
data modify storage ca.susu:enchants temp_item_auto append from entity @s Inventory[{tag:{Charged:1b,Ammo:6,Repeating:7,AutoCharge:1}}]
data modify storage ca.susu:enchants temp_item_auto append from entity @s Inventory[{tag:{Charged:1b,Ammo:7,Repeating:7,AutoCharge:1}}]

data modify storage ca.susu:enchants temp_item_auto append from entity @s Inventory[{tag:{Charged:0b,AutoCharge:1}}]

data modify storage ca.susu:enchants temp_item set from storage ca.susu:enchants temp_item_auto[0]

execute store result score @s auto_charge run data get storage ca.susu:enchants temp_item.Slot
execute if data storage ca.susu:enchants temp_item.Slot run scoreboard players add @s auto_charge 1
execute if score @s auto_charge matches 10.. run scoreboard players set @s auto_charge 0
execute if score @s auto_charge matches ..-1 run scoreboard players set @s auto_charge 10