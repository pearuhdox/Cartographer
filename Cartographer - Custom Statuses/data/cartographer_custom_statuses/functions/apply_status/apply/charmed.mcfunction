scoreboard players set $rng_min bbl.rng 1
scoreboard players set $rng_max bbl.rng 100

function bb:lib/rng

scoreboard players operation $value bbl.rng -= $entropy ca.player_entropy

scoreboard players operation $test ca.charm_time = $value bbl.rng

execute if score $chance ca.charm_time matches ..0 run scoreboard players set $chance ca.charm_time 100

scoreboard players set $do_chance ca.status_var 0

execute unless score $value bbl.rng > $chance ca.charm_time unless entity @s[tag=ca.boss] unless score @s ca.charm_immune matches 1.. run scoreboard players set $do_chance ca.status_var 1

execute if score $do_chance ca.status_var matches 1.. run scoreboard players operation @s ca.effect_charmed = $time ca.charm_time
execute if score $do_chance ca.status_var matches 1.. run function cartographer_custom_statuses:tick_effects/charmed/start
execute if score $do_chance ca.status_var matches 1.. run scoreboard players set $success ca.status_var 1