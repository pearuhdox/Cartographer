execute if score $chance ca.effect_shackled matches ..0 run scoreboard players set $chance ca.effect_shackled 100

scoreboard players operation $target ca.rand_var = $chance ca.effect_shackled
scoreboard players operation $bias ca.rand_var = $entropy ca.player_entropy

scoreboard players operation $threshold ca.rand_var = $luck ca.status_var
scoreboard players operation $threshold ca.rand_var *= $70 ca.CONSTANT
scoreboard players operation $threshold ca.rand_var /= $100 ca.CONSTANT

function cartographer_core:helper/chance_proc/calc


scoreboard players set $do_chance ca.status_var 0

execute if score $success ca.rand_var matches 1 run scoreboard players set $do_chance ca.status_var 1

execute if score $do_chance ca.status_var matches 1.. run scoreboard players operation @s ca.effect_shackled += $add ca.effect_shackled
execute if score $do_chance ca.status_var matches 1.. run scoreboard players set $success ca.status_var 1
