scoreboard players set $health ca.trap_tier 20

scoreboard players set $health_total ca.trap_tier 120

scoreboard players set $damage ca.trap_tier 2

scoreboard players operation $tier ca.trap_tier = @p ca.trap_tier


scoreboard players operation $health ca.trap_tier *= $tier ca.trap_tier
scoreboard players operation $damage ca.trap_tier *= $tier ca.trap_tier

scoreboard players operation $health_total ca.trap_tier += $health ca.trap_tier


execute store result storage cartographer:macro.mimics_and_traps damage int 1 run scoreboard players get $damage ca.trap_tier
execute store result storage cartographer:macro.mimics_and_traps health int 1 run scoreboard players get $health ca.trap_tier
execute store result storage cartographer:macro.mimics_and_traps health_total int 1 run scoreboard players get $health_total ca.trap_tier

function cartographer_mimics:mimic/scale_macro with storage cartographer:macro.mimics_and_traps