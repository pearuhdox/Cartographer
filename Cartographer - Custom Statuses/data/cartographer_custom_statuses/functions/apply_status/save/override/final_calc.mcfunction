execute if score $bleed ca.stat_calc_var matches 0.. run data modify storage cartographer_custom_statuses:apply_status data.effects append value {id:"bleeding",amplifier:0,chance:100}
execute if score $shock ca.stat_calc_var matches 1.. run data modify storage cartographer_custom_statuses:apply_status data.effects append value {id:"shocked",duration:0,chance:100}
execute if score $infect ca.stat_calc_var matches 1.. run data modify storage cartographer_custom_statuses:apply_status data.effects append value {id:"infected",duration:0,chance:100}

execute if score $stun_time ca.stat_calc_var matches 1.. run data modify storage cartographer_custom_statuses:apply_status data.effects append value {id:"stunned",duration:0,chance:100}

execute if score $cloak ca.stat_calc_var matches 1.. run data modify storage cartographer_custom_statuses:apply_status data.effects append value {id:"cloaked",duration:0,chance:100}

execute if score $morph_time ca.stat_calc_var matches 1.. run data modify storage cartographer_custom_statuses:apply_status data.effects append value {id:"polymorphed",chance:100}
execute if score $charm_time ca.stat_calc_var matches 1.. run data modify storage cartographer_custom_statuses:apply_status data.effects append value {id:"charmed",chance:100}

execute if score $expose_duration ca.stat_calc_var matches 1.. run data modify storage cartographer_custom_statuses:apply_status data.effects append value {id:"exposed",duration:0,amplifier:0,chance:100}

execute if score $oiled_duration ca.stat_calc_var matches 1.. run data modify storage cartographer_custom_statuses:apply_status data.effects append value {id:"oiled",duration:0,amplifier:0,chance:100}

execute if score $shackled ca.stat_calc_var matches 1.. run data modify storage cartographer_custom_statuses:apply_status data.effects append value {id:"shackled",duration:0,chance:100}

execute if score $brittle_duration ca.stat_calc_var matches 1.. run data modify storage cartographer_custom_statuses:apply_status data.effects append value {id:"brittle",duration:0,amplifier:0,chance:100}




execute if score $bleed ca.stat_calc_var matches 0.. store result storage cartographer_custom_statuses:apply_status data.effects[{id:"bleeding"}].amplifier int 1 run scoreboard players get $bleed ca.stat_calc_var
execute if score $bleed_chance ca.stat_calc_var matches 1.. store result storage cartographer_custom_statuses:apply_status data.effects[{id:"bleeding"}].chance int 1 run scoreboard players get $bleed_chance ca.stat_calc_var

execute if score $shock ca.stat_calc_var matches 1.. store result storage cartographer_custom_statuses:apply_status data.effects[{id:"shocked"}].duration int 1 run scoreboard players get $shock ca.stat_calc_var
execute if score $shock_chance ca.stat_calc_var matches 1.. store result storage cartographer_custom_statuses:apply_status data.effects[{id:"shocked"}].chance int 1 run scoreboard players get $shock_chance ca.stat_calc_var

execute if score $infect ca.stat_calc_var matches 1.. store result storage cartographer_custom_statuses:apply_status data.effects[{id:"infected"}].duration int 1 run scoreboard players get $infect ca.stat_calc_var
execute if score $infect_chance ca.stat_calc_var matches 1.. store result storage cartographer_custom_statuses:apply_status data.effects[{id:"infected"}].chance int 1 run scoreboard players get $infect_chance ca.stat_calc_var

execute if score $stun_time ca.stat_calc_var matches 1.. store result storage cartographer_custom_statuses:apply_status data.effects[{id:"stunned"}].duration int 1 run scoreboard players get $stun_time ca.stat_calc_var
execute if score $stun_time ca.stat_calc_var matches 1.. store result storage cartographer_custom_statuses:apply_status data.effects[{id:"stunned"}].chance int 1 run scoreboard players get $stun_chance ca.stat_calc_var

execute if score $morph_chance ca.stat_calc_var matches 1.. store result storage cartographer_custom_statuses:apply_status data.effects[{id:"polymorphed"}].chance int 1 run scoreboard players get $morph_chance ca.stat_calc_var
execute if score $charm_chance ca.stat_calc_var matches 1.. store result storage cartographer_custom_statuses:apply_status data.effects[{id:"charmed"}].chance int 1 run scoreboard players get $charm_chance ca.stat_calc_var

execute if score $morph_time ca.stat_calc_var matches 1.. store result storage cartographer_custom_statuses:apply_status data.effects[{id:"polymorphed"}].duration int 1 run scoreboard players get $morph_time ca.stat_calc_var
execute if score $charm_time ca.stat_calc_var matches 1.. store result storage cartographer_custom_statuses:apply_status data.effects[{id:"charmed"}].duration int 1 run scoreboard players get $charm_time ca.stat_calc_var

execute if score $cloak ca.stat_calc_var matches 1.. store result storage cartographer_custom_statuses:apply_status data.effects[{id:"cloaked"}].duration int 1 run scoreboard players get $cloak ca.stat_calc_var

execute if score $expose_duration ca.stat_calc_var matches 1.. store result storage cartographer_custom_statuses:apply_status data.effects[{id:"exposed"}].duration int 1 run scoreboard players get $expose_duration ca.stat_calc_var
execute if score $expose_level ca.stat_calc_var matches 0.. store result storage cartographer_custom_statuses:apply_status data.effects[{id:"exposed"}].amplifier int 1 run scoreboard players get $expose_level ca.stat_calc_var
execute if score $expose_chance ca.stat_calc_var matches 1.. store result storage cartographer_custom_statuses:apply_status data.effects[{id:"exposed"}].chance int 1 run scoreboard players get $expose_chance ca.stat_calc_var

execute if score $oiled_duration ca.stat_calc_var matches 1.. store result storage cartographer_custom_statuses:apply_status data.effects[{id:"oiled"}].duration int 1 run scoreboard players get $oiled_duration ca.stat_calc_var
execute if score $oiled_level ca.stat_calc_var matches 0.. store result storage cartographer_custom_statuses:apply_status data.effects[{id:"oiled"}].amplifier int 1 run scoreboard players get $oiled_level ca.stat_calc_var
execute if score $oiled_chance ca.stat_calc_var matches 1.. store result storage cartographer_custom_statuses:apply_status data.effects[{id:"oiled"}].chance int 1 run scoreboard players get $oiled_chance ca.stat_calc_var

execute if score $shackled ca.stat_calc_var matches 1.. store result storage cartographer_custom_statuses:apply_status data.effects[{id:"shackled"}].amplifier int 1 run scoreboard players get $shackled ca.stat_calc_var
execute if score $shackled_chance ca.stat_calc_var matches 1.. store result storage cartographer_custom_statuses:apply_status data.effects[{id:"shackled"}].chance int 1 run scoreboard players get $shackled_chance ca.stat_calc_var

execute if score $brittle_duration ca.stat_calc_var matches 1.. store result storage cartographer_custom_statuses:apply_status data.effects[{id:"brittle"}].duration int 1 run scoreboard players get $brittle_duration ca.stat_calc_var
execute if score $brittle_level ca.stat_calc_var matches 0.. store result storage cartographer_custom_statuses:apply_status data.effects[{id:"brittle"}].amplifier int 1 run scoreboard players get $brittle_level ca.stat_calc_var
execute if score $brittle_chance ca.stat_calc_var matches 1.. store result storage cartographer_custom_statuses:apply_status data.effects[{id:"brittle"}].chance int 1 run scoreboard players get $brittle_chance ca.stat_calc_var

#Finally, convert over entropy
scoreboard players operation $entropy ca.player_entropy = @s ca.player_entropy


scoreboard players set $do_apply_status ca.status_var 1