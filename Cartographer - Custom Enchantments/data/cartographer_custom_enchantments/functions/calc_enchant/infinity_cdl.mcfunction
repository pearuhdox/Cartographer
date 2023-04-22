execute unless score @s ca.inf_cdl_0 matches 1.. store result score @s ca.inf_cdl_0 run data get storage ca.susu:enchants inv[{Slot:0b}].tag.StoredItem.tag.InfinityCooldown
execute unless score @s ca.inf_cdl_1 matches 1.. store result score @s ca.inf_cdl_1 run data get storage ca.susu:enchants inv[{Slot:1b}].tag.StoredItem.tag.InfinityCooldown
execute unless score @s ca.inf_cdl_2 matches 1.. store result score @s ca.inf_cdl_2 run data get storage ca.susu:enchants inv[{Slot:2b}].tag.StoredItem.tag.InfinityCooldown
execute unless score @s ca.inf_cdl_3 matches 1.. store result score @s ca.inf_cdl_3 run data get storage ca.susu:enchants inv[{Slot:3b}].tag.StoredItem.tag.InfinityCooldown
execute unless score @s ca.inf_cdl_4 matches 1.. store result score @s ca.inf_cdl_4 run data get storage ca.susu:enchants inv[{Slot:4b}].tag.StoredItem.tag.InfinityCooldown
execute unless score @s ca.inf_cdl_5 matches 1.. store result score @s ca.inf_cdl_5 run data get storage ca.susu:enchants inv[{Slot:5b}].tag.StoredItem.tag.InfinityCooldown
execute unless score @s ca.inf_cdl_6 matches 1.. store result score @s ca.inf_cdl_6 run data get storage ca.susu:enchants inv[{Slot:6b}].tag.StoredItem.tag.InfinityCooldown
execute unless score @s ca.inf_cdl_7 matches 1.. store result score @s ca.inf_cdl_7 run data get storage ca.susu:enchants inv[{Slot:7b}].tag.StoredItem.tag.InfinityCooldown
execute unless score @s ca.inf_cdl_8 matches 1.. store result score @s ca.inf_cdl_8 run data get storage ca.susu:enchants inv[{Slot:8b}].tag.StoredItem.tag.InfinityCooldown

execute unless score @s ca.inf_cdl_o matches 1.. store result score @s ca.inf_cdl_o run data get storage ca.susu:enchants inv[{Slot:-106b}].tag.StoredItem.tag.InfinityCooldown


execute if score @s ca.inf_cdl_0 matches 1.. unless data storage ca.susu:enchants inv[{Slot:0b}].tag.StoredItem.tag.InfinityCooldown run scoreboard players set @s ca.inf_cdl_0 0
execute if score @s ca.inf_cdl_1 matches 1.. unless data storage ca.susu:enchants inv[{Slot:1b}].tag.StoredItem.tag.InfinityCooldown run scoreboard players set @s ca.inf_cdl_1 0
execute if score @s ca.inf_cdl_2 matches 1.. unless data storage ca.susu:enchants inv[{Slot:2b}].tag.StoredItem.tag.InfinityCooldown run scoreboard players set @s ca.inf_cdl_2 0
execute if score @s ca.inf_cdl_3 matches 1.. unless data storage ca.susu:enchants inv[{Slot:3b}].tag.StoredItem.tag.InfinityCooldown run scoreboard players set @s ca.inf_cdl_3 0
execute if score @s ca.inf_cdl_4 matches 1.. unless data storage ca.susu:enchants inv[{Slot:4b}].tag.StoredItem.tag.InfinityCooldown run scoreboard players set @s ca.inf_cdl_4 0
execute if score @s ca.inf_cdl_5 matches 1.. unless data storage ca.susu:enchants inv[{Slot:5b}].tag.StoredItem.tag.InfinityCooldown run scoreboard players set @s ca.inf_cdl_5 0
execute if score @s ca.inf_cdl_6 matches 1.. unless data storage ca.susu:enchants inv[{Slot:6b}].tag.StoredItem.tag.InfinityCooldown run scoreboard players set @s ca.inf_cdl_6 0
execute if score @s ca.inf_cdl_7 matches 1.. unless data storage ca.susu:enchants inv[{Slot:7b}].tag.StoredItem.tag.InfinityCooldown run scoreboard players set @s ca.inf_cdl_7 0
execute if score @s ca.inf_cdl_8 matches 1.. unless data storage ca.susu:enchants inv[{Slot:8b}].tag.StoredItem.tag.InfinityCooldown run scoreboard players set @s ca.inf_cdl_8 0

execute if score @s ca.inf_cdl_o matches 1.. unless data storage ca.susu:enchants inv[{Slot:-106b}].tag.StoredItem.tag.InfinityCooldown run scoreboard players set @s ca.inf_cdl_o 0