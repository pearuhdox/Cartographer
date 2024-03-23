#Do On Hit Enchantments Here
scoreboard players set $fire_aspect ca.weapon_var 0
scoreboard players set $knockback ca.weapon_var 0

scoreboard players set $executioner ca.weapon_var 0
scoreboard players set $first_strike ca.weapon_var 0
scoreboard players set $hex_eater ca.weapon_var 0
scoreboard players set $tempo_theft ca.weapon_var 0
scoreboard players set $cauterize ca.weapon_var 0

scoreboard players set $duelist ca.weapon_var 0
scoreboard players set $hunter ca.weapon_var 0
scoreboard players set $smite ca.weapon_var 0

scoreboard players operation $fire_aspect ca.weapon_var = $fire_aspect ca.var
scoreboard players operation $knockback ca.weapon_var = $knockback ca.var

scoreboard players operation $executioner ca.weapon_var = $executioner ca.var
scoreboard players operation $first_strike ca.weapon_var = $first_strike ca.var
scoreboard players operation $hex_eater ca.weapon_var = $hex_eater ca.var
scoreboard players operation $tempo_theft ca.weapon_var = $tempo_theft ca.var
scoreboard players operation $cauterize ca.weapon_var = $cauterize ca.var

scoreboard players operation $duelist ca.weapon_var = $duelist ca.var
scoreboard players operation $hunter ca.weapon_var = $hunter ca.var
scoreboard players operation $smite ca.weapon_var = $smite ca.var

execute at @s run function cartographer_custom_enchantments:enchant_effects/on_hit/ranged_master

#Lifesteal Check
execute if score $lifesteal ca.var matches 1.. on attacker run scoreboard players set @s ca.lifesteal_use_check 3

#Quake
execute if score $quake ca.var matches 1.. at @s run function cartographer_custom_enchantments:enchant_effects/quake/projectile_find_potion