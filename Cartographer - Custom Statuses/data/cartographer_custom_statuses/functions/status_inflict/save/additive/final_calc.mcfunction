execute if score $bleed ca.stat_calc_var matches 1.. run data modify storage cartographer_custom_statuses:status_inflict data.Effects append value {Id:"bleeding",Amount:0,Chance:100}
execute if score $shock ca.stat_calc_var matches 1.. run data modify storage cartographer_custom_statuses:status_inflict data.Effects append value {Id:"shocking",Duration:0,Chance:100}
execute if score $infect ca.stat_calc_var matches 1.. run data modify storage cartographer_custom_statuses:status_inflict data.Effects append value {Id:"infection",Duration:0,Chance:100}

execute if score $stun_time ca.stat_calc_var matches 1.. run data modify storage cartographer_custom_statuses:status_inflict data.Effects append value {Id:"stun",Duration:0,Chance:100}

execute if score $cloak ca.stat_calc_var matches 1.. run data modify storage cartographer_custom_statuses:status_inflict data.Effects append value {Id:"cloaking",Duration:0,Chance:100}

execute if score $morph_chance ca.stat_calc_var matches 1.. run data modify storage cartographer_custom_statuses:status_inflict data.Effects append value {Id:"morph",Chance:100}
execute if score $possess_chance ca.stat_calc_var matches 1.. run data modify storage cartographer_custom_statuses:status_inflict data.Effects append value {Id:"possession",Chance:100}

execute if score $expose_duration ca.stat_calc_var matches 1.. run data modify storage cartographer_custom_statuses:status_inflict data.Effects append value {Id:"expose",Duration:0,Amplifier:0,Chance:100}

execute if score $oiled_duration ca.stat_calc_var matches 1.. run data modify storage cartographer_custom_statuses:status_inflict data.Effects append value {Id:"oiled",Duration:0,Amplifier:0,Chance:100}

execute if score $shackled ca.stat_calc_var matches 1.. run data modify storage cartographer_custom_statuses:status_inflict data.Effects append value {Id:"shackled",Duration:0,Chance:100}

execute if score $brittle_duration ca.stat_calc_var matches 1.. run data modify storage cartographer_custom_statuses:status_inflict data.Effects append value {Id:"brittle",Duration:0,Amplifier:0,Chance:100}




execute if score $bleed ca.stat_calc_var matches 1.. store result storage cartographer_custom_statuses:status_inflict data.Effects[{Id:"bleeding"}].Amount int 1 run scoreboard players get $bleed ca.stat_calc_var
execute if score $bleed_chance ca.stat_calc_var matches 1.. store result storage cartographer_custom_statuses:status_inflict data.Effects[{Id:"bleeding"}].Chance int 1 run scoreboard players get $bleed_chance ca.stat_calc_var

execute if score $shock ca.stat_calc_var matches 1.. store result storage cartographer_custom_statuses:status_inflict data.Effects[{Id:"shocking"}].Duration int 1 run scoreboard players get $shock ca.stat_calc_var
execute if score $shock_chance ca.stat_calc_var matches 1.. store result storage cartographer_custom_statuses:status_inflict data.Effects[{Id:"shocking"}].Chance int 1 run scoreboard players get $shock_chance ca.stat_calc_var

execute if score $infect ca.stat_calc_var matches 1.. store result storage cartographer_custom_statuses:status_inflict data.Effects[{Id:"infection"}].Duration int 1 run scoreboard players get $infect ca.stat_calc_var
execute if score $infect_chance ca.stat_calc_var matches 1.. store result storage cartographer_custom_statuses:status_inflict data.Effects[{Id:"infection"}].Chance int 1 run scoreboard players get $infect_chance ca.stat_calc_var

execute if score $stun_time ca.stat_calc_var matches 1.. store result storage cartographer_custom_statuses:status_inflict data.Effects[{Id:"stun"}].Duration int 1 run scoreboard players get $stun_time ca.stat_calc_var
execute if score $stun_time ca.stat_calc_var matches 1.. store result storage cartographer_custom_statuses:status_inflict data.Effects[{Id:"stun"}].Chance int 1 run scoreboard players get $stun_chance ca.stat_calc_var

execute if score $morph_chance ca.stat_calc_var matches 1.. store result storage cartographer_custom_statuses:status_inflict data.Effects[{Id:"morph"}].Chance int 1 run scoreboard players get $morph_chance ca.stat_calc_var
execute if score $possess_chance ca.stat_calc_var matches 1.. store result storage cartographer_custom_statuses:status_inflict data.Effects[{Id:"possession"}].Chance int 1 run scoreboard players get $possess_chance ca.stat_calc_var

execute if score $cloak ca.stat_calc_var matches 1.. store result storage cartographer_custom_statuses:status_inflict data.Effects[{Id:"cloaking"}].Duration int 1 run scoreboard players get $cloak ca.stat_calc_var

execute if score $expose_duration ca.stat_calc_var matches 1.. store result storage cartographer_custom_statuses:status_inflict data.Effects[{Id:"expose"}].Duration int 1 run scoreboard players get $expose_duration ca.stat_calc_var
execute if score $expose_level ca.stat_calc_var matches 1.. store result storage cartographer_custom_statuses:status_inflict data.Effects[{Id:"expose"}].Amplifier int 1 run scoreboard players get $expose_level ca.stat_calc_var
execute if score $expose_chance ca.stat_calc_var matches 1.. store result storage cartographer_custom_statuses:status_inflict data.Effects[{Id:"expose"}].Chance int 1 run scoreboard players get $expose_chance ca.stat_calc_var

execute if score $oiled_duration ca.stat_calc_var matches 1.. store result storage cartographer_custom_statuses:status_inflict data.Effects[{Id:"oiled"}].Duration int 1 run scoreboard players get $oiled_duration ca.stat_calc_var
execute if score $oiled_level ca.stat_calc_var matches 1.. store result storage cartographer_custom_statuses:status_inflict data.Effects[{Id:"oiled"}].Amplifier int 1 run scoreboard players get $oiled_level ca.stat_calc_var
execute if score $oiled_chance ca.stat_calc_var matches 1.. store result storage cartographer_custom_statuses:status_inflict data.Effects[{Id:"oiled"}].Chance int 1 run scoreboard players get $oiled_chance ca.stat_calc_var

execute if score $shackled ca.stat_calc_var matches 1.. store result storage cartographer_custom_statuses:status_inflict data.Effects[{Id:"shackled"}].Amplifier int 1 run scoreboard players get $shackled ca.stat_calc_var
execute if score $shackled_chance ca.stat_calc_var matches 1.. store result storage cartographer_custom_statuses:status_inflict data.Effects[{Id:"shackled"}].Chance int 1 run scoreboard players get $shackled_chance ca.stat_calc_var

execute if score $brittle_duration ca.stat_calc_var matches 1.. store result storage cartographer_custom_statuses:status_inflict data.Effects[{Id:"brittle"}].Duration int 1 run scoreboard players get $brittle_duration ca.stat_calc_var
execute if score $brittle_level ca.stat_calc_var matches 1.. store result storage cartographer_custom_statuses:status_inflict data.Effects[{Id:"brittle"}].Amplifier int 1 run scoreboard players get $brittle_level ca.stat_calc_var
execute if score $brittle_chance ca.stat_calc_var matches 1.. store result storage cartographer_custom_statuses:status_inflict data.Effects[{Id:"brittle"}].Chance int 1 run scoreboard players get $brittle_chance ca.stat_calc_var

#Finally, convert over entropy
scoreboard players operation $entropy ca.player_entropy = @s ca.player_entropy


scoreboard players set $do_status_inflict ca.status_var 1
#Finally, convert over entropy
scoreboard players operation $entropy ca.player_entropy = @s ca.player_entropy