execute if score $chance ca.morph_time matches ..0 run scoreboard players set $chance ca.morph_time 100

scoreboard players operation $target ca.rand_var = $chance ca.morph_time
scoreboard players operation $bias ca.rand_var = $entropy ca.player_entropy

scoreboard players operation $threshold ca.rand_var = $luck ca.status_var
scoreboard players operation $threshold ca.rand_var *= $70 ca.CONSTANT
scoreboard players operation $threshold ca.rand_var /= $100 ca.CONSTANT

function cartographer_core:helper/chance_proc/calc


scoreboard players set $do_chance ca.status_var 0

execute if score $success ca.rand_var matches 1 unless entity @s[tag=ca.boss] unless entity @s[tag=ca.was_morphed] run scoreboard players set $do_chance ca.status_var 2
execute if score $success ca.rand_var matches 1 unless entity @s[tag=ca.boss] unless entity @s[tag=ca.was_morphed] unless score @s ca.morph_immune matches 1.. run scoreboard players set $do_chance ca.status_var 1

execute if score $do_chance ca.status_var matches 1.. run scoreboard players operation @s ca.effect_morph = $time ca.morph_time
execute if score $do_chance ca.status_var matches 1.. run function cartographer_custom_statuses:effects/morph/do
execute if score $do_chance ca.status_var matches 1.. run scoreboard players set $success ca.status_var 1