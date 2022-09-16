data modify storage cartographer_mob_abilities:epf_calc head set value []
data modify storage cartographer_mob_abilities:epf_calc body set value []
data modify storage cartographer_mob_abilities:epf_calc legs set value []
data modify storage cartographer_mob_abilities:epf_calc feet set value []

data modify storage cartographer_mob_abilities:epf_calc head set from storage cartographer_core:player_inventory Inventory[{Slot:103b}].tag.Enchantments
data modify storage cartographer_mob_abilities:epf_calc body set from storage cartographer_core:player_inventory Inventory[{Slot:102b}].tag.Enchantments
data modify storage cartographer_mob_abilities:epf_calc legs set from storage cartographer_core:player_inventory Inventory[{Slot:101b}].tag.Enchantments
data modify storage cartographer_mob_abilities:epf_calc feet set from storage cartographer_core:player_inventory Inventory[{Slot:100b}].tag.Enchantments

scoreboard players set @s ca.ma_epf_blast 0
scoreboard players set @s ca.ma_epf_proj 0
scoreboard players set @s ca.ma_epf_fire 0
scoreboard players set @s ca.ma_epf_prot 0

execute if data storage cartographer_mob_abilities:epf_calc head[0] run function cartographer_mob_abilities:helper/epf/calculate/head
execute if data storage cartographer_mob_abilities:epf_calc body[0] run function cartographer_mob_abilities:helper/epf/calculate/body
execute if data storage cartographer_mob_abilities:epf_calc legs[0] run function cartographer_mob_abilities:helper/epf/calculate/legs
execute if data storage cartographer_mob_abilities:epf_calc feet[0] run function cartographer_mob_abilities:helper/epf/calculate/feet

scoreboard players operation @s ca.ma_epf_blast *= $8 ca.CONSTANT
scoreboard players operation @s ca.ma_epf_proj *= $8 ca.CONSTANT
scoreboard players operation @s ca.ma_epf_fire *= $8 ca.CONSTANT
scoreboard players operation @s ca.ma_epf_prot *= $4 ca.CONSTANT

execute if score @s ca.ma_epf_blast matches 81.. run scoreboard players set @s ca.ma_epf_blast 80
execute if score @s ca.ma_epf_proj matches 81.. run scoreboard players set @s ca.ma_epf_proj 80
execute if score @s ca.ma_epf_fire matches 81.. run scoreboard players set @s ca.ma_epf_fire 80
execute if score @s ca.ma_epf_prot matches 81.. run scoreboard players set @s ca.ma_epf_prot 80