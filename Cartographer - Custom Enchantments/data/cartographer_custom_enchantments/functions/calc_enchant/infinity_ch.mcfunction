execute unless score @s ca.inf_ch_0 matches 1.. store result score @s ca.inf_ch_0 run data get storage ca.susu:enchants inv[{Slot:0b}].tag.InfinityCharges
execute unless score @s ca.inf_ch_1 matches 1.. store result score @s ca.inf_ch_1 run data get storage ca.susu:enchants inv[{Slot:1b}].tag.InfinityCharges
execute unless score @s ca.inf_ch_2 matches 1.. store result score @s ca.inf_ch_2 run data get storage ca.susu:enchants inv[{Slot:2b}].tag.InfinityCharges
execute unless score @s ca.inf_ch_3 matches 1.. store result score @s ca.inf_ch_3 run data get storage ca.susu:enchants inv[{Slot:3b}].tag.InfinityCharges
execute unless score @s ca.inf_ch_4 matches 1.. store result score @s ca.inf_ch_4 run data get storage ca.susu:enchants inv[{Slot:4b}].tag.InfinityCharges
execute unless score @s ca.inf_ch_5 matches 1.. store result score @s ca.inf_ch_5 run data get storage ca.susu:enchants inv[{Slot:5b}].tag.InfinityCharges
execute unless score @s ca.inf_ch_6 matches 1.. store result score @s ca.inf_ch_6 run data get storage ca.susu:enchants inv[{Slot:6b}].tag.InfinityCharges
execute unless score @s ca.inf_ch_7 matches 1.. store result score @s ca.inf_ch_7 run data get storage ca.susu:enchants inv[{Slot:7b}].tag.InfinityCharges
execute unless score @s ca.inf_ch_8 matches 1.. store result score @s ca.inf_ch_8 run data get storage ca.susu:enchants inv[{Slot:8b}].tag.InfinityCharges

execute unless score @s ca.inf_ch_o matches 1.. store result score @s ca.inf_ch_o run data get storage ca.susu:enchants inv[{Slot:-106b}].tag.InfinityCharges


execute if score @s ca.inf_ch_0 matches 1.. unless data storage ca.susu:enchants inv[{Slot:0b}].tag.InfinityCharges run scoreboard players set @s ca.inf_ch_0 0
execute if score @s ca.inf_ch_1 matches 1.. unless data storage ca.susu:enchants inv[{Slot:1b}].tag.InfinityCharges run scoreboard players set @s ca.inf_ch_1 0
execute if score @s ca.inf_ch_2 matches 1.. unless data storage ca.susu:enchants inv[{Slot:2b}].tag.InfinityCharges run scoreboard players set @s ca.inf_ch_2 0
execute if score @s ca.inf_ch_3 matches 1.. unless data storage ca.susu:enchants inv[{Slot:3b}].tag.InfinityCharges run scoreboard players set @s ca.inf_ch_3 0
execute if score @s ca.inf_ch_4 matches 1.. unless data storage ca.susu:enchants inv[{Slot:4b}].tag.InfinityCharges run scoreboard players set @s ca.inf_ch_4 0
execute if score @s ca.inf_ch_5 matches 1.. unless data storage ca.susu:enchants inv[{Slot:5b}].tag.InfinityCharges run scoreboard players set @s ca.inf_ch_5 0
execute if score @s ca.inf_ch_6 matches 1.. unless data storage ca.susu:enchants inv[{Slot:6b}].tag.InfinityCharges run scoreboard players set @s ca.inf_ch_6 0
execute if score @s ca.inf_ch_7 matches 1.. unless data storage ca.susu:enchants inv[{Slot:7b}].tag.InfinityCharges run scoreboard players set @s ca.inf_ch_7 0
execute if score @s ca.inf_ch_8 matches 1.. unless data storage ca.susu:enchants inv[{Slot:8b}].tag.InfinityCharges run scoreboard players set @s ca.inf_ch_8 0

execute if score @s ca.inf_ch_o matches 1.. unless data storage ca.susu:enchants inv[{Slot:-106b}].tag.InfinityCharges run scoreboard players set @s ca.inf_ch_o 0