scoreboard players operation $fire_aspect ca.weapon_var = @s ca.fire_aspect
scoreboard players operation $knockback ca.weapon_var = @s ca.knockback

scoreboard players operation $executioner ca.weapon_var = @s ca.executioner
scoreboard players operation $first_strike ca.weapon_var = @s ca.first_strike
scoreboard players operation $hex_eater ca.weapon_var = @s ca.hex_eater
scoreboard players operation $tempo_theft ca.weapon_var = @s ca.tempo_theft
scoreboard players operation $cauterize ca.weapon_var = @s ca.cauterize

scoreboard players operation $duelist ca.weapon_var = @s ca.duelist
scoreboard players operation $hunter ca.weapon_var = @s ca.hunter
scoreboard players operation $smite ca.weapon_var = @s ca.smite

execute on passengers run data modify storage cartographer_custom_statuses:apply_effects data.effects set from entity @s data.apply_effects
execute on passengers run data modify storage cartographer_custom_statuses:apply_status data.effects set from entity @s data.apply_status

execute on passengers run kill @s

execute positioned ~-0.25 ~ ~-0.25 as @e[type=#bb:hostile,dx=1.5,dy=1,dz=1.5,tag=!ca.evocation_fang_hit] at @s run function cartographer_custom_enchantments:enchant_effects/evocation/afflict_branch

execute if score $do_linger ca.status_var matches 1.. run scoreboard players set @s ca.linger_cdl 300