data modify storage cartographer_custom_statuses:status_inflict data.temp set from entity @s Inventory[{Slot:102b}].tag.StatusInflict

execute store result score $temp ca.stat_calc_var run data get storage cartographer_custom_statuses:status_inflict data.temp[{Id:"bleeding"}].Amount
scoreboard players operation $bleed ca.stat_calc_var > $temp ca.stat_calc_var

execute store result score $temp ca.stat_calc_var run data get storage cartographer_custom_statuses:status_inflict data.temp[{Id:"shocking"}].Duration
scoreboard players operation $shock ca.stat_calc_var > $temp ca.stat_calc_var

execute store result score $temp ca.stat_calc_var run data get storage cartographer_custom_statuses:status_inflict data.temp[{Id:"infection"}].Duration
scoreboard players operation $infect ca.stat_calc_var > $temp ca.stat_calc_var

execute store result score $temp ca.stat_calc_var run data get storage cartographer_custom_statuses:status_inflict data.temp[{Id:"stun"}].Duration
scoreboard players operation $stun_time ca.stat_calc_var > $temp ca.stat_calc_var

execute store result score $temp ca.stat_calc_var run data get storage cartographer_custom_statuses:status_inflict data.temp[{Id:"stun"}].Chance
scoreboard players operation $stun_chance ca.stat_calc_var > $temp ca.stat_calc_var

execute store result score $temp ca.stat_calc_var run data get storage cartographer_custom_statuses:status_inflict data.temp[{Id:"morph"}].Chance
scoreboard players operation $morph_chance ca.stat_calc_var > $temp ca.stat_calc_var

execute store result score $temp ca.stat_calc_var run data get storage cartographer_custom_statuses:status_inflict data.temp[{Id:"possession"}].Chance
scoreboard players operation $possess_chance ca.stat_calc_var > $temp ca.stat_calc_var

execute store result score $temp ca.stat_calc_var run data get storage cartographer_custom_statuses:status_inflict data.temp[{Id:"cloaking"}]
scoreboard players operation $cloak ca.stat_calc_var > $temp ca.stat_calc_var