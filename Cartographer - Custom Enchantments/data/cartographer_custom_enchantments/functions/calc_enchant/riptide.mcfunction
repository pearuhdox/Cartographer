execute unless score @s ca.rip_cdl_0 matches 1.. store result score @s ca.rip_cdl_0 run data get storage ca.susu:enchants inv[{Slot:0b}].tag.InfinityCharges
execute unless score @s ca.rip_cdl_1 matches 1.. store result score @s ca.rip_cdl_1 run data get storage ca.susu:enchants inv[{Slot:1b}].tag.InfinityCharges
execute unless score @s ca.rip_cdl_2 matches 1.. store result score @s ca.rip_cdl_2 run data get storage ca.susu:enchants inv[{Slot:2b}].tag.InfinityCharges
execute unless score @s ca.rip_cdl_3 matches 1.. store result score @s ca.rip_cdl_3 run data get storage ca.susu:enchants inv[{Slot:3b}].tag.InfinityCharges
execute unless score @s ca.rip_cdl_4 matches 1.. store result score @s ca.rip_cdl_4 run data get storage ca.susu:enchants inv[{Slot:4b}].tag.InfinityCharges
execute unless score @s ca.rip_cdl_5 matches 1.. store result score @s ca.rip_cdl_5 run data get storage ca.susu:enchants inv[{Slot:5b}].tag.InfinityCharges
execute unless score @s ca.rip_cdl_6 matches 1.. store result score @s ca.rip_cdl_6 run data get storage ca.susu:enchants inv[{Slot:6b}].tag.InfinityCharges
execute unless score @s ca.rip_cdl_7 matches 1.. store result score @s ca.rip_cdl_7 run data get storage ca.susu:enchants inv[{Slot:7b}].tag.InfinityCharges
execute unless score @s ca.rip_cdl_8 matches 1.. store result score @s ca.rip_cdl_8 run data get storage ca.susu:enchants inv[{Slot:8b}].tag.InfinityCharges

execute unless score @s ca.rip_cdl_o matches 1.. store result score @s ca.rip_cdl_o run data get storage ca.susu:enchants inv[{Slot:-106b}].tag.InfinityCharges


execute if score @s ca.rip_cdl_0 matches 1.. unless data storage ca.susu:enchants inv[{Slot:0b}].tag.InfinityCharges run scoreboard players set @s ca.rip_cdl_0 0
execute if score @s ca.rip_cdl_1 matches 1.. unless data storage ca.susu:enchants inv[{Slot:1b}].tag.InfinityCharges run scoreboard players set @s ca.rip_cdl_1 0
execute if score @s ca.rip_cdl_2 matches 1.. unless data storage ca.susu:enchants inv[{Slot:2b}].tag.InfinityCharges run scoreboard players set @s ca.rip_cdl_2 0
execute if score @s ca.rip_cdl_3 matches 1.. unless data storage ca.susu:enchants inv[{Slot:3b}].tag.InfinityCharges run scoreboard players set @s ca.rip_cdl_3 0
execute if score @s ca.rip_cdl_4 matches 1.. unless data storage ca.susu:enchants inv[{Slot:4b}].tag.InfinityCharges run scoreboard players set @s ca.rip_cdl_4 0
execute if score @s ca.rip_cdl_5 matches 1.. unless data storage ca.susu:enchants inv[{Slot:5b}].tag.InfinityCharges run scoreboard players set @s ca.rip_cdl_5 0
execute if score @s ca.rip_cdl_6 matches 1.. unless data storage ca.susu:enchants inv[{Slot:6b}].tag.InfinityCharges run scoreboard players set @s ca.rip_cdl_6 0
execute if score @s ca.rip_cdl_7 matches 1.. unless data storage ca.susu:enchants inv[{Slot:7b}].tag.InfinityCharges run scoreboard players set @s ca.rip_cdl_7 0
execute if score @s ca.rip_cdl_8 matches 1.. unless data storage ca.susu:enchants inv[{Slot:8b}].tag.InfinityCharges run scoreboard players set @s ca.rip_cdl_8 0

execute if score @s ca.rip_cdl_o matches 1.. unless data storage ca.susu:enchants inv[{Slot:-106b}].tag.InfinityCharges run scoreboard players set @s ca.rip_cdl_o 0