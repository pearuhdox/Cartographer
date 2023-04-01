scoreboard players set $dmg_red ca.ma_epf_data 0

execute if score $explosion ca.dmg_type matches 1.. run scoreboard players operation $dmg_red ca.ma_epf_data += @s ca.ma_epf_blast
execute if score $projectile ca.dmg_type matches 1.. run scoreboard players operation $dmg_red ca.ma_epf_data += @s ca.ma_epf_proj
execute if score $fire ca.dmg_type matches 1.. run scoreboard players operation $dmg_red ca.ma_epf_data += @s ca.ma_epf_fire

execute if score $dmg_red ca.ma_epf_data matches 81.. run scoreboard players set $dmg_red ca.ma_epf_data 80
execute if score $dmg_red ca.ma_epf_data matches ..0 run scoreboard players set $dmg_red ca.ma_epf_data 0

scoreboard players set $dmg_red_inv ca.ma_epf_data 100
scoreboard players operation $dmg_red_inv ca.ma_epf_data -= $dmg_red ca.ma_epf_data

scoreboard players operation @s bbl.damage_queue *= $dmg_red_inv ca.ma_epf_data
scoreboard players operation @s bbl.damage_queue /= $100 ca.CONSTANT