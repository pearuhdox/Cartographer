#
scoreboard players set @s ca.epf 0

scoreboard players set @s epf_prot 0
scoreboard players set @s epf_proj 0
scoreboard players set @s epf_blas 0
scoreboard players set @s epf_fire 0
scoreboard players set @s epf_fall 0

function cartographer_core:helper/hurt_player/true_damage/calculate_epf/head
function cartographer_core:helper/hurt_player/true_damage/calculate_epf/chest
function cartographer_core:helper/hurt_player/true_damage/calculate_epf/legs
function cartographer_core:helper/hurt_player/true_damage/calculate_epf/feet

scoreboard players operation @s epf_proj *= $2 ca.CONSTANT
scoreboard players operation @s epf_blas *= $2 ca.CONSTANT
scoreboard players operation @s epf_fire *= $2 ca.CONSTANT
scoreboard players operation @s epf_fall *= $3 ca.CONSTANT

scoreboard players set @s[scores={epf_prot=21..}] epf_prot 20
scoreboard players set @s[scores={epf_proj=21..}] epf_proj 20
scoreboard players set @s[scores={epf_blas=21..}] epf_blas 20
scoreboard players set @s[scores={epf_fire=21..}] epf_fire 20
scoreboard players set @s[scores={epf_fall=21..}] epf_fall 20

scoreboard players operation @s ca.epf = @s epf_prot 

execute if entity @s[tag=fire_hit] run scoreboard players operation @s ca.epf += @s epf_fire 
execute if entity @s[tag=projectile_hit] run scoreboard players operation @s ca.epf += @s epf_proj 
execute if entity @s[tag=explosion_hit] run scoreboard players operation @s ca.epf += @s epf_blas 
execute if entity @s[tag=fall_hit] run scoreboard players operation @s ca.epf += @s epf_fall 

scoreboard players set @s[scores={ca.epf=21..}] ca.epf 20

scoreboard players operation @s ca.epf *= $4 ca.CONSTANT

scoreboard players operation epf_red= damage_queue = damage= damage_queue
scoreboard players operation epf_red= damage_queue *= @s ca.epf

#Round up if we block 0.5 to 1 damage (to 1)
execute if score epf_red= damage_queue matches 51..99 run scoreboard players set epf_red= damage_queue 100
scoreboard players operation epf_red= damage_queue /= $100 ca.CONSTANT

#Do the damage reduction
scoreboard players operation damage= damage_queue -= epf_red= damage_queue
execute if score damage= damage_queue matches ..-1 run scoreboard players set damage= damage_queue 0


tag @s remove fire_hit
tag @s remove fall_hit
tag @s remove explosion_hit
tag @s remove projectile_hit
