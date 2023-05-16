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

#Use Relevant EPFs
execute if entity @s[tag=fire_hit] run scoreboard players operation @s ca.epf += @s ca.epf_fire 
execute if entity @s[tag=projectile_hit] run scoreboard players operation @s ca.epf += @s ca.epf_proj 
execute if entity @s[tag=explosion_hit] run scoreboard players operation @s ca.epf += @s ca.epf_blas 
execute if entity @s[tag=fall_hit] run scoreboard players operation @s ca.epf += @s ca.epf_fall 

scoreboard players operation $fire_curse ca.damage_queue = @s ca.curse_flammability
scoreboard players operation $fall_curse ca.damage_queue = @s ca.curse_clumsiness
scoreboard players operation $magic_curse ca.damage_queue = @s ca.curse_jinxing

scoreboard players operation $fire_curse ca.damage_queue *= $10 ca.CONSTANT
scoreboard players operation $fall_curse ca.damage_queue *= $10 ca.CONSTANT
scoreboard players operation $magic_curse ca.damage_queue *= $10 ca.CONSTANT

#Use Relevant Curses
execute if entity @s[tag=fire_hit] run scoreboard players operation @s ca.damage_queue += $fire_curse ca.damage_queue
execute if entity @s[tag=fall_hit] run scoreboard players operation @s ca.damage_queue += $fall_curse ca.damage_queue
execute if entity @s[tag=magic_hit] run scoreboard players operation @s ca.damage_queue += $magic_curse ca.damage_queue

scoreboard players set @s[scores={ca.epf=21..}] ca.epf 20

scoreboard players operation @s ca.epf *= $4 ca.CONSTANT

scoreboard players operation epf_red= ca.damage_queue = @s ca.damage_queue
scoreboard players operation epf_red= ca.damage_queue *= @s ca.epf

#Divide by 100 to rescale our value to the proper amount.
scoreboard players operation epf_red= ca.damage_queue /= $100 ca.CONSTANT

#Do the damage reduction
scoreboard players operation @s ca.damage_queue -= epf_red= ca.damage_queue
execute if score @s ca.damage_queue matches ..-1 run scoreboard players set @s ca.damage_queue 0


tag @s remove fire_hit
tag @s remove fall_hit
tag @s remove explosion_hit
tag @s remove projectile_hit
tag @s remove magic_hit
