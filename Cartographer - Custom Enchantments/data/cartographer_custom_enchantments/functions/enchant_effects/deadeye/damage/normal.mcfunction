scoreboard players set $deadeye ca.damage_queue 8

scoreboard players operation $power_scale ca.deadeye = $power ca.deadeye
scoreboard players operation $power_scale ca.deadeye *= $3 ca.CONSTANT

scoreboard players set $overcharge_v ca.deadeye 0
execute if score $overcharge ca.deadeye matches 1.. if score $overcharge_tier ca.deadeye matches 1.. run scoreboard players operation $overcharge_v ca.deadeye = $overcharge ca.deadeye
execute if score $overcharge ca.deadeye matches 1.. if score $overcharge_tier ca.deadeye matches 1.. run scoreboard players operation $overcharge_v ca.deadeye *= $overcharge_tier ca.deadeye
execute if score $overcharge ca.deadeye matches 1.. if score $overcharge_tier ca.deadeye matches 1.. run scoreboard players operation $overcharge_v ca.deadeye *= $3 ca.CONSTANT
execute if score $overcharge ca.deadeye matches 1.. if score $overcharge_tier ca.deadeye matches 1.. run scoreboard players operation $overcharge_v ca.deadeye /= $4 ca.CONSTANT

scoreboard players operation $deadeye ca.damage_queue += $overcharge_v ca.deadeye

scoreboard players set $focus_v ca.deadeye 0
execute if score $focus ca.deadeye matches 1.. if score $draw_bow_time ca.deadeye matches 20..27 run scoreboard players operation $focus_v ca.deadeye = $focus ca.deadeye
execute if score $focus ca.deadeye matches 1.. if score $draw_bow_time ca.deadeye matches 20..27 run scoreboard players operation $focus_v ca.deadeye *= $3 ca.CONSTANT
scoreboard players operation $deadeye ca.damage_queue += $focus_v ca.deadeye


scoreboard players set $concentration_v ca.deadeye 0
execute if score $concentration ca.deadeye matches 1.. run scoreboard players operation $concentration_v ca.deadeye = $concentration ca.deadeye
execute if score $concentration ca.deadeye matches 1.. run scoreboard players operation $concentration_v ca.deadeye *= $3 ca.CONSTANT
execute if score $concentration ca.deadeye matches 1.. run scoreboard players operation $concentration_v ca.deadeye *= $concentration_stacks ca.deadeye
execute if score $concentration ca.deadeye matches 1.. run scoreboard players operation $concentration_v ca.deadeye /= $4 ca.CONSTANT
scoreboard players operation $deadeye ca.damage_queue += $concentration_v ca.deadeye


scoreboard players operation $deadeye ca.damage_queue += $power_scale ca.deadeye
