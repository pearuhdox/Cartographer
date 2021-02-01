data modify storage cartographer_core:pldata UUID_cmp set from entity @s UUID
execute store success score $temp ca.pldata.var run data modify storage cartographer_core:pldata UUID_cmp set from storage cartographer_core:pldata temp[0].UUID
execute if score $temp ca.pldata.var matches 0 store result score @s ca.pldata.id run data get storage cartographer_core:pldata temp[0].id
data remove storage cartographer_core:pldata temp[0]
execute if score $temp ca.pldata.var matches 1 if data storage cartographer_core:pldata temp[0] run function cartographer_core:data_ids/recover_id2
execute if score $temp ca.pldata.var matches 1 unless data storage cartographer_core:pldata temp[0] run scoreboard players set @s ca.pldata.id 1