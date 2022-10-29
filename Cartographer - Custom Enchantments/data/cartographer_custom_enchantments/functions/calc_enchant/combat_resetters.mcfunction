data modify storage ca.susu:enchants temp_item set value {}
data modify storage ca.susu:enchants temp_item_resetter set value []

data modify storage ca.susu:enchants temp_item_resetter append from entity @s Inventory[{tag:{CustomEnchantments:[{id:"echo"}]}}]
data modify storage ca.susu:enchants temp_item_resetter append from entity @s Inventory[{tag:{CustomEnchantments:[{id:"first_strike"}]}}]

data modify storage ca.susu:enchants temp_item set from storage ca.susu:enchants temp_item_resetter[0]

execute store result score @s ca.resetter_check_kill run data get storage ca.susu:enchants temp_item.Slot
execute if data storage ca.susu:enchants temp_item.Slot run scoreboard players add @s ca.resetter_check_kill 1
execute if score @s ca.resetter_check_kill matches 10.. run scoreboard players set @s ca.resetter_check_kill 0

execute if score @s ca.resetter_check_kill matches 1.. run scoreboard players set $cu_en_kill ca.enabler 1