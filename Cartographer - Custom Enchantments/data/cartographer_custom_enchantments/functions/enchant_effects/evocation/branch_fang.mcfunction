execute store result entity @s Warmup int 1 run scoreboard players add $time ca.evocation 0

execute on passengers run data modify entity @s data.apply_effects set from storage cartographer_custom_statuses:apply_effects data.effects
execute on passengers run data modify entity @s data.apply_status set from storage cartographer_custom_statuses:apply_status data.effects

#data modify entity @s Owner set from storage cartographer_custom_enchantments:evocation Owner

scoreboard players operation @s ca.fire_aspect = $fire_aspect ca.weapon_var
scoreboard players operation @s ca.knockback = $knockback ca.weapon_var

scoreboard players operation @s ca.executioner = $executioner ca.weapon_var
scoreboard players operation @s ca.first_strike = $first_strike ca.weapon_var
scoreboard players operation @s ca.hex_eater = $hex_eater ca.weapon_var
scoreboard players operation @s ca.tempo_theft = $tempo_theft ca.weapon_var
scoreboard players operation @s ca.cauterize = $cauterize ca.weapon_var

scoreboard players operation @s ca.duelist = $duelist ca.weapon_var
scoreboard players operation @s ca.hunter = $hunter ca.weapon_var
scoreboard players operation @s ca.smite = $smite ca.weapon_var