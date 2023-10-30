data modify storage cartographer_custom_statuses:apply_status data.temp set from entity @s Inventory[{Slot:-106b}].tag.apply_status

execute store result score $temp ca.stat_calc_var run data get storage cartographer_custom_statuses:apply_status data.temp[{id:"bleeding"}].amplifier
scoreboard players operation $bleed ca.stat_calc_var > $temp ca.stat_calc_var

execute store result score $temp ca.stat_calc_var run data get storage cartographer_custom_statuses:apply_status data.temp[{id:"bleeding"}].chance
scoreboard players operation $bleed_chance ca.stat_calc_var > $temp ca.stat_calc_var


execute store result score $temp ca.stat_calc_var run data get storage cartographer_custom_statuses:apply_status data.temp[{id:"shocking"}].duration
scoreboard players operation $shock ca.stat_calc_var > $temp ca.stat_calc_var

execute store result score $temp ca.stat_calc_var run data get storage cartographer_custom_statuses:apply_status data.temp[{id:"shocking"}].chance
scoreboard players operation $shock_chance ca.stat_calc_var > $temp ca.stat_calc_var


execute store result score $temp ca.stat_calc_var run data get storage cartographer_custom_statuses:apply_status data.temp[{id:"infection"}].duration
scoreboard players operation $infect ca.stat_calc_var > $temp ca.stat_calc_var

execute store result score $temp ca.stat_calc_var run data get storage cartographer_custom_statuses:apply_status data.temp[{id:"infection"}].chance
scoreboard players operation $infect_chance ca.stat_calc_var > $temp ca.stat_calc_var


execute store result score $temp ca.stat_calc_var run data get storage cartographer_custom_statuses:apply_status data.temp[{id:"stun"}].duration
scoreboard players operation $stun_time ca.stat_calc_var > $temp ca.stat_calc_var

execute store result score $temp ca.stat_calc_var run data get storage cartographer_custom_statuses:apply_status data.temp[{id:"stun"}].chance
scoreboard players operation $stun_chance ca.stat_calc_var > $temp ca.stat_calc_var


execute store result score $temp ca.stat_calc_var run data get storage cartographer_custom_statuses:apply_status data.temp[{id:"morph"}].chance
scoreboard players operation $morph_chance ca.stat_calc_var > $temp ca.stat_calc_var

execute store result score $temp ca.stat_calc_var run data get storage cartographer_custom_statuses:apply_status data.temp[{id:"morph"}].duration
scoreboard players operation $morph_time ca.stat_calc_var > $temp ca.stat_calc_var

execute store result score $temp ca.stat_calc_var run data get storage cartographer_custom_statuses:apply_status data.temp[{id:"charmed"}].chance
scoreboard players operation $charm_chance ca.stat_calc_var > $temp ca.stat_calc_var

execute store result score $temp ca.stat_calc_var run data get storage cartographer_custom_statuses:apply_status data.temp[{id:"charmed"}].duration
scoreboard players operation $charm_time ca.stat_calc_var > $temp ca.stat_calc_var


execute store result score $temp ca.stat_calc_var run data get storage cartographer_custom_statuses:apply_status data.temp[{id:"cloaking"}]
scoreboard players operation $cloak ca.stat_calc_var > $temp ca.stat_calc_var


execute store result score $temp ca.stat_calc_var run data get storage cartographer_custom_statuses:apply_status data.temp[{id:"expose"}].amplifier
scoreboard players operation $expose_level ca.stat_calc_var > $temp ca.stat_calc_var

execute store result score $temp ca.stat_calc_var run data get storage cartographer_custom_statuses:apply_status data.temp[{id:"expose"}].duration
scoreboard players operation $expose_duration ca.stat_calc_var > $temp ca.stat_calc_var

execute store result score $temp ca.stat_calc_var run data get storage cartographer_custom_statuses:apply_status data.temp[{id:"expose"}].chance
scoreboard players operation $expose_chance ca.stat_calc_var > $temp ca.stat_calc_var


execute store result score $temp ca.stat_calc_var run data get storage cartographer_custom_statuses:apply_status data.temp[{id:"oiled"}].amplifier
scoreboard players operation $oiled_level ca.stat_calc_var > $temp ca.stat_calc_var

execute store result score $temp ca.stat_calc_var run data get storage cartographer_custom_statuses:apply_status data.temp[{id:"oiled"}].duration
scoreboard players operation $oiled_duration ca.stat_calc_var > $temp ca.stat_calc_var

execute store result score $temp ca.stat_calc_var run data get storage cartographer_custom_statuses:apply_status data.temp[{id:"oiled"}].chance
scoreboard players operation $oiled_chance ca.stat_calc_var > $temp ca.stat_calc_var


execute store result score $temp ca.stat_calc_var run data get storage cartographer_custom_statuses:apply_status data.temp[{id:"shackled"}].duration
scoreboard players operation $shackled ca.stat_calc_var > $temp ca.stat_calc_var

execute store result score $temp ca.stat_calc_var run data get storage cartographer_custom_statuses:apply_status data.temp[{id:"shackled"}].chance
scoreboard players operation $shackled_chance ca.stat_calc_var > $temp ca.stat_calc_var


execute store result score $temp ca.stat_calc_var run data get storage cartographer_custom_statuses:apply_status data.temp[{id:"brittle"}].amplifier
scoreboard players operation $brittle_level ca.stat_calc_var > $temp ca.stat_calc_var

execute store result score $temp ca.stat_calc_var run data get storage cartographer_custom_statuses:apply_status data.temp[{id:"brittle"}].duration
scoreboard players operation $brittle_duration ca.stat_calc_var > $temp ca.stat_calc_var

execute store result score $temp ca.stat_calc_var run data get storage cartographer_custom_statuses:apply_status data.temp[{id:"brittle"}].chance
scoreboard players operation $brittle_chance ca.stat_calc_var > $temp ca.stat_calc_var

scoreboard players set $status_override ca.status_var 1