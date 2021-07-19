#
scoreboard players set @s ca.epf 0

scoreboard players set @s ca.epf_prot 0
scoreboard players set @s ca.epf_proj 0
scoreboard players set @s ca.epf_blas 0
scoreboard players set @s ca.epf_fire 0
scoreboard players set @s ca.epf_fall 0

function cartographer_custom_enchantments:enchant_effects/second_wind/calculate_epf/head
function cartographer_custom_enchantments:enchant_effects/second_wind/calculate_epf/chest
function cartographer_custom_enchantments:enchant_effects/second_wind/calculate_epf/legs
function cartographer_custom_enchantments:enchant_effects/second_wind/calculate_epf/feet

scoreboard players operation @s ca.epf_proj *= $2 ca.CONSTANT
scoreboard players operation @s ca.epf_blas *= $2 ca.CONSTANT
scoreboard players operation @s ca.epf_fire *= $2 ca.CONSTANT
scoreboard players operation @s ca.epf_fall *= $3 ca.CONSTANT

scoreboard players set @s[scores={ca.epf_prot=21..}] ca.epf_prot 20
scoreboard players set @s[scores={ca.epf_proj=21..}] ca.epf_proj 20
scoreboard players set @s[scores={ca.epf_blas=21..}] ca.epf_blas 20
scoreboard players set @s[scores={ca.epf_fire=21..}] ca.epf_fire 20
scoreboard players set @s[scores={ca.epf_fall=21..}] ca.epf_fall 20

scoreboard players operation @s ca.epf = @s ca.epf_prot 

execute if entity @s[tag=fire_hit] run scoreboard players operation @s ca.epf += @s ca.epf_fire 
execute if entity @s[tag=projectile_hit] run scoreboard players operation @s ca.epf += @s ca.epf_proj 
execute if entity @s[tag=explosion_hit] run scoreboard players operation @s ca.epf += @s ca.epf_blas 
execute if entity @s[tag=fall_hit] run scoreboard players operation @s ca.epf += @s ca.epf_fall 

scoreboard players set @s[scores={ca.epf=21..}] ca.epf 20

scoreboard players operation @s ca.epf *= $4 ca.CONSTANT

scoreboard players operation epf_red= cdl.Damage_Queue = @s cdl.Damage_Queue
scoreboard players operation epf_red= cdl.Damage_Queue *= @s ca.epf

#Divide by 100 to rescale our value to the proper amount.
scoreboard players operation epf_red= cdl.Damage_Queue /= $100 ca.CONSTANT

#Do the damage reduction
scoreboard players operation @s cdl.Damage_Queue -= epf_red= cdl.Damage_Queue
execute if score @s cdl.Damage_Queue matches ..-1 run scoreboard players set @s cdl.Damage_Queue 0


tag @s remove fire_hit
tag @s remove fall_hit
tag @s remove explosion_hit
tag @s remove projectile_hit
