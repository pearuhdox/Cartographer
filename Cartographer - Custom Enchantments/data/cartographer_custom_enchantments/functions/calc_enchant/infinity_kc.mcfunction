execute unless score @s ca.inf_kc_0 matches 1.. store result score @s ca.inf_kc_0 run data get storage ca.susu:enchants inv[{Slot:0b}].tag.StoredItem.tag.InfinityKillCount
execute unless score @s ca.inf_kc_1 matches 1.. store result score @s ca.inf_kc_1 run data get storage ca.susu:enchants inv[{Slot:1b}].tag.StoredItem.tag.InfinityKillCount
execute unless score @s ca.inf_kc_2 matches 1.. store result score @s ca.inf_kc_2 run data get storage ca.susu:enchants inv[{Slot:2b}].tag.StoredItem.tag.InfinityKillCount
execute unless score @s ca.inf_kc_3 matches 1.. store result score @s ca.inf_kc_3 run data get storage ca.susu:enchants inv[{Slot:3b}].tag.StoredItem.tag.InfinityKillCount
execute unless score @s ca.inf_kc_4 matches 1.. store result score @s ca.inf_kc_4 run data get storage ca.susu:enchants inv[{Slot:4b}].tag.StoredItem.tag.InfinityKillCount
execute unless score @s ca.inf_kc_5 matches 1.. store result score @s ca.inf_kc_5 run data get storage ca.susu:enchants inv[{Slot:5b}].tag.StoredItem.tag.InfinityKillCount
execute unless score @s ca.inf_kc_6 matches 1.. store result score @s ca.inf_kc_6 run data get storage ca.susu:enchants inv[{Slot:6b}].tag.StoredItem.tag.InfinityKillCount
execute unless score @s ca.inf_kc_7 matches 1.. store result score @s ca.inf_kc_7 run data get storage ca.susu:enchants inv[{Slot:7b}].tag.StoredItem.tag.InfinityKillCount
execute unless score @s ca.inf_kc_8 matches 1.. store result score @s ca.inf_kc_8 run data get storage ca.susu:enchants inv[{Slot:8b}].tag.StoredItem.tag.InfinityKillCount

execute unless score @s ca.inf_kc_o matches 1.. store result score @s ca.inf_kc_o run data get storage ca.susu:enchants inv[{Slot:-106b}].tag.StoredItem.tag.InfinityKillCount


execute if score @s ca.inf_kc_0 matches 1.. unless data storage ca.susu:enchants inv[{Slot:0b}].tag.StoredItem.tag.InfinityKillCount run scoreboard players set @s ca.inf_kc_0 0
execute if score @s ca.inf_kc_1 matches 1.. unless data storage ca.susu:enchants inv[{Slot:1b}].tag.StoredItem.tag.InfinityKillCount run scoreboard players set @s ca.inf_kc_1 0
execute if score @s ca.inf_kc_2 matches 1.. unless data storage ca.susu:enchants inv[{Slot:2b}].tag.StoredItem.tag.InfinityKillCount run scoreboard players set @s ca.inf_kc_2 0
execute if score @s ca.inf_kc_3 matches 1.. unless data storage ca.susu:enchants inv[{Slot:3b}].tag.StoredItem.tag.InfinityKillCount run scoreboard players set @s ca.inf_kc_3 0
execute if score @s ca.inf_kc_4 matches 1.. unless data storage ca.susu:enchants inv[{Slot:4b}].tag.StoredItem.tag.InfinityKillCount run scoreboard players set @s ca.inf_kc_4 0
execute if score @s ca.inf_kc_5 matches 1.. unless data storage ca.susu:enchants inv[{Slot:5b}].tag.StoredItem.tag.InfinityKillCount run scoreboard players set @s ca.inf_kc_5 0
execute if score @s ca.inf_kc_6 matches 1.. unless data storage ca.susu:enchants inv[{Slot:6b}].tag.StoredItem.tag.InfinityKillCount run scoreboard players set @s ca.inf_kc_6 0
execute if score @s ca.inf_kc_7 matches 1.. unless data storage ca.susu:enchants inv[{Slot:7b}].tag.StoredItem.tag.InfinityKillCount run scoreboard players set @s ca.inf_kc_7 0
execute if score @s ca.inf_kc_8 matches 1.. unless data storage ca.susu:enchants inv[{Slot:8b}].tag.StoredItem.tag.InfinityKillCount run scoreboard players set @s ca.inf_kc_8 0

execute if score @s ca.inf_kc_o matches 1.. unless data storage ca.susu:enchants inv[{Slot:-106b}].tag.StoredItem.tag.InfinityKillCount run scoreboard players set @s ca.inf_kc_o 0