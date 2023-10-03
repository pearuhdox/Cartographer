scoreboard players set $rng_min bbl.rng 1
scoreboard players set $rng_max bbl.rng 100

function bb:lib/rng

scoreboard players operation $value bbl.rng -= $entropy ca.player_entropy

execute if score $chance ca.effect_infect matches ..0 run scoreboard players set $chance ca.effect_infect 100

scoreboard players set $do_chance ca.status_var 0

execute if score $value bbl.rng < $chance ca.effect_infect run scoreboard players set $do_chance ca.status_var 1

execute if score $do_chance ca.status_var matches 1.. run scoreboard players operation @s ca.effect_infect += $add ca.effect_infect