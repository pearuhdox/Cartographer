data modify storage ca.susu:enchants temp_item set value {}
data modify storage ca.susu:enchants temp_item_auto_rec set value []
data modify storage ca.susu:enchants temp_item_auto set value []

data modify storage ca.susu:enchants temp_item_auto_rec set from storage ca.susu:enchants inv

scoreboard players set $found_auto_charge ca.ench_var 0
function cartographer_custom_enchantments:calc_enchant/auto_charge/get

data modify storage ca.susu:enchants temp_item set from storage ca.susu:enchants temp_item_auto[0]

execute store result score @s ca.auto_charge run data get storage ca.susu:enchants temp_item.Slot
execute if data storage ca.susu:enchants temp_item.Slot run scoreboard players add @s ca.auto_charge 1
execute if score @s ca.auto_charge matches 10.. run scoreboard players set @s ca.auto_charge 0
execute if score @s ca.auto_charge matches ..-1 run scoreboard players set @s ca.auto_charge 10

execute if score @s ca.auto_charge matches 1.. run scoreboard players set $cu_en_kill ca.enabler 1