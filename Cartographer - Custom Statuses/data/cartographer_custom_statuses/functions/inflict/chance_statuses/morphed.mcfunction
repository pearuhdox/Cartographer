scoreboard players set $rng_min bbl.rng 1
scoreboard players set $rng_max bbl.rng 100

function bb:lib/rng

scoreboard players operation $value bbl.rng -= $entropy ca.player_entropy

scoreboard players set $do_chance ca.status_var 0

execute unless score $value bbl.rng < $inflict_chance ca.morph_time unless entity @s[tag=ca.boss] unless entity @s[tag=ca.was_morphed] run scoreboard players set $do_chance ca.status_var 2

execute unless score $value bbl.rng < $inflict_chance ca.morph_time unless entity @s[tag=ca.boss] unless entity @s[tag=ca.was_morphed] unless score @s ca.morph_immune matches 1.. run scoreboard players set $do_chance ca.status_var 1

execute if score $do_chance ca.status_var matches 1.. run scoreboard players operation @s ca.effect_morph = $inflict_time ca.morph_time
execute if score $do_chance ca.status_var matches 1.. run function cartographer_custom_statuses:effects/morph/do
execute if score $do_chance ca.status_var matches 1.. run scoreboard players set $success ca.status_var 1