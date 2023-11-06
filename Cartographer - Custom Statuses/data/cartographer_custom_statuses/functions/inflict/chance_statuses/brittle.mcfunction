scoreboard players set $rng_min bbl.rng 1
scoreboard players set $rng_max bbl.rng 100

function bb:lib/rng

scoreboard players operation $value bbl.rng -= $entropy ca.player_entropy

scoreboard players set $do_chance ca.status_var 0

execute if score $value bbl.rng < $inflict_chance ca.effect_brittle_duration run scoreboard players set $do_chance ca.status_var 1


execute if score $do_chance ca.status_var matches 1.. run scoreboard players operation @s ca.effect_brittle_duration = $inflict ca.effect_brittle_duration
execute if score $do_chance ca.status_var matches 1.. run scoreboard players operation @s ca.effect_brittle_level = $inflict ca.effect_brittle_level
execute if score $do_chance ca.status_var matches 1.. unless score @s ca.brittle_cdl matches 1.. unless entity @s[tag=ca.brittle_warmup] run function cartographer_custom_statuses:effects/apply/vfx/brittle
execute if score $do_chance ca.status_var matches 1.. run scoreboard players set $success ca.status_var 1

