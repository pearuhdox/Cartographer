scoreboard players operation $orig_damage ca.laser_damage = @s ca.laser_damage

scoreboard players operation $damage_left ca.laser_damage = @s ca.laser_damage

scoreboard players operation $blast_prot ca.laser_damage = @s ca.ma_epf_blast
scoreboard players operation $protection ca.laser_damage = @s ca.ma_epf_prot

#Add prot back to blast prot

scoreboard players operation $total_epf ca.laser_damage = $blast_prot ca.laser_damage
scoreboard players operation $total_epf ca.laser_damage += $protection ca.laser_damage

execute if score $total_epf ca.laser_damage matches 81.. run scoreboard players set $total_epf ca.laser_damage 80

scoreboard players set $dmg_resist ca.laser_damage 100
scoreboard players operation $dmg_resist ca.laser_damage -= $total_epf ca.laser_damage 

scoreboard players operation $damage_left ca.laser_damage *= $dmg_resist ca.laser_damage
scoreboard players operation $damage_left ca.laser_damage /= $100 ca.CONSTANT

scoreboard players operation $damage_left ca.laser_damage /= $10 ca.CONSTANT

scoreboard players operation @s bbl.damage_queue = $damage_left ca.laser_damage
execute if score @s bbl.damage_queue matches 0 run scoreboard players add @s bbl.damage_queue 1

function bb:call/hpm/player/damage/true

tag @s remove ca.hit_by_laser